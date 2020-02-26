#!/bin/bash -x

export PATH=$PATH:~/

# Error installing rgeos & Morpho packages in R
sudo apt install apt-file
sudo apt update
apt-file search geos-config #for looking up files in the repo
sudo apt install libgeos-dev

# Error installing rgdal package in R
sudo apt install libgdal-dev
