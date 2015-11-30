#!/bin/bash
cd ~

# Guest additions stuff
sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install build-essential linux-headers-`uname -r` dkms

# Essentials
sudo apt-get -y install vim
sudo apt-get -y install R-base-core
sudo apt-get -y install gnome-do
sudo apt-get -y install terminator
sudo apt-get -y install git

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
