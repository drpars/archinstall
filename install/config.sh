#!/bin/bash

#You can change any data in the related files, according to your own...

#------------------------------Settings----------------------------------
#Local - Boot Settings
./archinstall/set-locale.sh
./archinstall/set-pacman.sh
./archinstall/boot.sh
#Settings (User, OpenSSH)
./archinstall/user.sh
./archinstall/set-openssh.sh
#Gpu Driver
./archinstall/nvidia.sh
#ArchLinux installation
./archinstall/setup.sh
#------------------------------------------------------------------------

mkinitcpio -P

systemctl enable NetworkManager

printf "\nİşlem Tamam!\n"
