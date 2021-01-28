#!/bin/sh
#Get Package List of my pc
apt list --installed | cat | grep -o '^[^/]*' | tail -n +2 > AptPackageList.txt
snap list | cat | grep -o '^[^ ]*' | tail -n +2  > SnapPackageList.txt
echo "Package list done."