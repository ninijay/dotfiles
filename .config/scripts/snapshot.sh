#!/bin/bash

# ca 10% of actual size used for snapshot
rootsize=30G
homesize=10G

rootname=root_snap
homename=home_snap

# Remove snapshots if they exist

sudo lvs | grep $rootname
if [ $? -eq 0 ];
then
    sudo lvremove /dev/main/$rootname -y
fi

sudo lvs | grep $homename
if [ $? -eq 0 ];
then
    sudo lvremove /dev/main/$homename -y
fi

# calc size

sudo lvcreate -L $rootsize -s /dev/mapper/main-root -n $rootname
sudo lvcreate -L $homesize -s /dev/mapper/main-home -n $homename

