#!/bin/bash

#configure linux first use

#install all apt linus packages
mapfile -t aptList < AptPackageList.txt
apt update
apt upgrade -y
apt install aptList
for package in "${aptList[@]}"
do  
    echo -e "${package}"
done
apt autoremove


echo "apt packages installed"

#install all apt snap packages
mapfile -t snapList < SnapPackageList.txt
sudo snap refresh
for package in "${snapList[@]}"
do
    echo -e "${package}"
    sudo snap install "${package}"
done
echo "snap packages installed"

echo "all done"