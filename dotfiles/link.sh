#!/bin/bash

USER=$(whoami)
echo $USER

mv /home/jonas/dotfiles/dotfiles/* /home/jonas/dotfiles/.
rm -r /home/jonas/dotfiles/dotfiles
ln -s /home/jonas/dotfiles/.task /home/jonas/.task
ln -s /home/jonas/dotfiles/.taskrc /home/jonas/.taskrc
ln -s /home/jonas/dotfiles/.timewarrior /home/jonas/.timewarrior
ln -s /home/jonas/dotfiles/.vim /home/jonas/.vim
ln -s /home/jonas/dotfiles/.viminfo /home/jonas/.viminfo
ln -s /home/jonas/dotfiles/.vimrc /home/jonas/.vimrc
ln -s /home/jonas/dotfiles/.vimwiki /home/jonas/.vimwiki
sed "s/\(data.location=\/\).*\(\/.task\)/\1\home\/jonas\2/g" /home/jonas/.taskrc
#sed "s/\(data.location=\/\).*\(\/.task\)/\1\home\/$(whoami)\2/g" /home/jonas/.taskrc
