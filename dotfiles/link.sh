#!/bin/bash

USER=$(whoami)
echo $USER

#mv /home/jonas/dotfiles/dotfiles/* /home/jonas/dotfiles/.
#rm -r /home/jonas/dotfiles/dotfiles
ln -s /home/jonas/dotfiles/dotfiles/.task /home/jonas/.task
ln -s /home/jonas/dotfiles/dotfiles/.taskrc /home/jonas/.taskrc
ln -s /home/jonas/dotfiles/dotfiles/.timewarrior /home/jonas/.timewarrior
ln -s /home/jonas/dotfiles/dotfiles/.vim /home/jonas/.vim
ln -s /home/jonas/dotfiles/dotfiles/.viminfo /home/jonas/.viminfo
ln -s /home/jonas/dotfiles/dotfiles/.vimrc /home/jonas/.vimrc
ln -s /home/jonas/dotfiles/dotfiles/.vimwiki /home/jonas/.vimwiki
sed "s/\(data.location=\/\).*\(\/.task\)/\1\home\/jonas\2/g" /home/jonas/.taskrc
#sed "s/\(data.location=\/\).*\(\/.task\)/\1\home\/$(whoami)\2/g" /home/jonas/.taskrc
