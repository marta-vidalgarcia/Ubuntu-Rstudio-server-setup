#!/bin/bash -x

export PATH=$PATH:~/

sudo wget -q -O /tmp/libpng12.deb http://mirrors.kernel.org/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb && sudo dpkg -i /tmp/libpng12.deb && sudo rm /tmp/libpng12.deb

sudo apt-get update && sudo apt-get upgrade

sudo apt-get install build-essential

sudo apt install gfortran

sudo apt-get install libjpeg-dev

sudo apt-get install gdebi-core

sudo apt-get install xorg

sudo apt-get install libx11-dev

sudo apt-get install libglu1-mesa-dev

sudo apt-get install libfreetype6-dev

sudo apt-get install libssl1.0.0 libssl-dev

sudo apt-get install libcurl4-openssl-dev

sudo apt-get install cifs-utils

wget https://mran.blob.core.windows.net/install/mro/3.5.3/ubuntu/microsoft-r-open-3.5.3.tar.gz && tar -xf microsoft-r-open-3.5.3.tar.gz && cd microsoft-r-open/ && sudo ./install.sh

wget https://s3.amazonaws.com/rstudio-ide-build/server/bionic/amd64/rstudio-server-1.3.776-amd64.deb && sudo gdebi rstudio-server-1.3.776-amd64.deb

sudo rstudio-server start

sudo mount.cifs //10.41.72.40/Storage /mnt -o user=jose.aponte,vers=3.0,dir_mode=0777,file_mode=0777

# a few useful ubuntu installs to run Bioconductor (eg DOQTL) packages
sudo apt-get install libxml2-dev
sudo apt-get install r-cran-rmysql
sudo apt-get install libmariadb-client-lgpl-dev

ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'


