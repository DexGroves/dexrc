#!/bin/bash
cd ~

sudo apt-get update
sudo apt-get upgrade

# Essentials
sudo apt-get -y install vim gnome-do terminator git tmux curl

# Makes R work
sudo apt-get -y install libssl-dev

# hickop
mkdir .vim
git clone https://github.com/hickop/vim-hickop-colors .vim

# dexrc
git clone https://github.com/DexGroves/dexrc
cp dexrc/.tmux.conf .
cp dexrc/.vimrc .
cp dexrc/.bash_aliases .
cat dexrc/.bashrc >> ~/.bashrc
mkdir config
cp -R dexrc/config/* .config/
cp -R dexrc/sublime/* .config/sublime-text-3/
