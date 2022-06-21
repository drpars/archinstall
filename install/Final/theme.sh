#!/bin/bash

git clone https://github.com/vinceliuice/Qogir-icon-theme
cd Qogir-icon-theme
./install.sh
cd ..
rm -R -f Qogir-icon-theme

git clone https://github.com/sevmeyer/mocu-xcursor
cd mocu-xcursor
./make.sh
sudo cp -R /home/drpars/İndirilenler/mocu-xcursor/dist/* /usr/share/icons
cd ..
rm -R -f mocu-xcursor

# git clone https://aur.archlinux.org/chrome-gnome-shell.git
# cd chrome-gnome-shell
# makepkg -si --noconfirm
# cd ..
# rm -R -f chrome-gnome-shell
