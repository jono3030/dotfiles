#!/bin/bash

# Get system user
SCR_USER=$(whoami)

# Make symlinks from sync folder to container
#mv /home/$SCR_USER/dotfiles/dotfiles/* /home/$SCR_USER/dotfiles/.
#rm -r /home/$SCR_USER/dotfiles/dotfiles
#rm /home/$SCR_USER/.taskrc
ln -s /home/$SCR_USER/dotfiles_sync/.task /home/$SCR_USER/.task
ln -s /home/$SCR_USER/dotfiles_sync/.taskrc /home/$SCR_USER/.taskrc
ln -s /home/$SCR_USER/dotfiles_sync/.timewarrior /home/$SCR_USER/.timewarrior
ln -s /home/$SCR_USER/dotfiles_sync/.vim /home/$SCR_USER/.vim
ln -s /home/$SCR_USER/dotfiles_sync/.viminfo /home/$SCR_USER/.viminfo
ln -s /home/$SCR_USER/dotfiles_sync/.vimrc /home/$SCR_USER/.vimrc
ln -s /home/$SCR_USER/dotfiles_sync/vimwiki /home/$SCR_USER/vimwiki
mkdir -p /home/$SCR_USER/.config
mkdir -p /home/$SCR_USER/.local/share
ln -s /home/$SCR_USER/dotfiles_sync/.config/calcurse /home/$SCR_USER/.config/calcurse
ln -s /home/$SCR_USER/dotfiles_sync/.local/share/calcurse /home/$SCR_USER/.local/share/calcurse
#sed -i "s/\(data.location=\/\).*\(\/.task\)/\1\home\/$SCR_USER\2/g" /home/$SCR_USER/.taskrc
#sed "s/\(data.location=\/\).*\(\/.task\)/\1\home\/$(whoami)\2/g" /home/$SCR_USER/.taskrc
