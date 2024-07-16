# Pull Arch image
FROM archlinux:latest

# Set variables needed for building. Reads from .env?
ARG USER_ID
ARG GROUP_ID
ARG USER
ARG FULL_NAME
ARG E_MAIL

# Specify maintainer of this image
LABEL maintainer="${FULL_NAME} <${E_MAIL}>"

# Install general nvim packages
RUN pacman -Sy
RUN pacman -S --noconfirm \
    neovim \
    ripgrep \
    wget \
    curl \
    tmux \
    xclip \
    fd \
    rsync \
    npm \
    unzip \
    gcc

# Python specific installation
RUN pacman -S --noconfirm \
    python \
    python-pip

# Install and configure Git and Lazygit
RUN pacman -S --noconfirm \
    git \
    lazygit \
    && git config --global user.name "${FULL_NAME}" \
    && git config --global user.email "${E_MAIL}" \
    && git config --global alias.l1 "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Install zsh
RUN pacman -S --noconfirm \
    zsh

# Create user
RUN groupadd --gid $GROUP_ID $USER
RUN useradd -m -u $USER_ID -g $GROUP_ID -s /bin/zsh $USER

# Change from root to user
USER $USER

# Install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Pull NvChad configs
RUN git clone https://github.com/NvChad/starter ~/.config/nvim

# Pull custom configs for NvChad from own repo
### RUN git clone -b nvchad_base --single-branch https://github.com/jono3030/dotfiles.git /home/$USER/dotfiles
### RUN rsync -a /home/$USER/dotfiles/custom /home/$USER/.config/nvim/lua/
### RUN rm -r /home/$USER/dotfiles

### COPY ./dotfiles/custom /home/$USER/.config/nvim/lua/

# Fix Neovim colorscheme not working in Tmux
# .zshrc
RUN echo "" >> /home/$USER/.zshrc
RUN echo "# Fix Neovim colorscheme not working in Tmux" >> /home/$USER/.zshrc
RUN echo "export TERM=xterm-256color" >> /home/$USER/.zshrc
# .tmux.conf
RUN touch /home/$USER/.tmux.conf
RUN echo "# Fix Neovim colorscheme not working in Tmux" > /home/$USER/.tmux.conf
RUN echo 'set -g default-terminal "tmux-256color"' >> /home/$USER/.tmux.conf

# Change working directory to home directory of user
WORKDIR /home/$USER
