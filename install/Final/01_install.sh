#!/bin/bash

cd /home/drpars/İndirilenler
sudo cp /archinstall/Final/20-nvidia.conf /etc/X11/xorg.conf.d/
sudo /archinstall/Final/apps.sh
/archinstall/Final/zsh.sh
sudo /archinstall/Final/samba.sh
/archinstall/Final/yay.sh
/archinstall/Final/aur_apps.sh
/archinstall/Final/theme.sh
/archinstall/Final/neovim.sh
/archinstall/Final/i3-settings.sh
sudo /archinstall/Final/disk.sh
cd

