#!/bin/bash

sudo apt-get -y install build-essential linux-headers-`uname -r` dkms

sudo apt-get -y install libcurl4-openssl-dev
sudo apt-get -y install libxml2-dev
sudo apt-get -y install libx11-dev
sudo apt-get -y install libglu1-mesa-dev
