#!/bin/bash


#--------------------aur------------------------------------
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
sudo rm -R -f yay
#...........................................................
