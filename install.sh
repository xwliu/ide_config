#!/bin/bash
rm -rf ~/.vimrc
rm -rf ~/.vim
cp -rf .vimrc ~/
cp -rf .vim ~/

rm ~/.gitconfig
cp -rf .gitconfig ~/

echo 'export PS1="[\[\033[01;33m\]\t\[\033[00m\]] \[\033[01;36m\]\`pwd\`\[\033[00m\]\n"' >>  ~/.bash_profile

mkdir -p ~/mtools/bin
export PATH=$PATH:~/mtools/bin

cp -rf rg ~/mtools/bin/
cp -rf fd ~/mtools/bin/

chmod a+x ~/mtools/bin/*
