#!/bin/bash
cd;

sudo apt-get update
sudo apt-get upgrade

# Essentials
sudo apt-get -y install vim gnome-do terminator git tmux curl

# Sublime 
wget https://download.sublimetext.com/sublime-text_build-3114_amd64.deb
sudo dpkg -i sublime-text_build-3103_amd64.deb

# R -- change xenial to whatever distro
echo 'deb https://cloud.r-project.org/bin/linux/ubuntu xenial/' | sudo tee --append /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y r-base-dev

# R dependencies
sudo apt-get -y install libssl-dev libcurl4-openssl-dev

# hickop
mkdir .vim
git clone https://github.com/hickop/vim-hickop-colors .vim

# dexrc
git clone https://github.com/DexGroves/dexrc
cp dexrc/.tmux.conf .
cp dexrc/.vimrc .
cp dexrc/.bash_aliases .
cat dexrc/.bashrc >> ~/.bashrc
cp dexrc/.Rprofile ~/
cp -R dexrc/config/* .config/
cp -R dexrc/sublime/* .config/sublime-text-3/

# R setup 
R CMD BATCH dexrc/install_core_packages.R 
