#!/bin/bash

# !!!!!run without sudo privilege!!!!!
# user-dirs.dirs
sudo mv /home/drpars/Downloads /home/drpars/İndirilenler
sudo sed -i 's/Downloads/İndirilenler/' /home/drpars/.config/user-dirs.dirs
# sudo mv /archinstall/ -t /home/drpars/İndirilenler
sudo chown -R drpars:wheel /archinstall/
sudo chmod +x /archinstall/Final/*.sh

/archinstall/Final/01_install.sh

#-------------------------DesktopEnvironment-----------------------------
# sudo /archinstall/gnome.sh
# sudo /archinstall/xfce.sh 
# sudo /archinstall/plasma.sh
/archinstall/i3.sh
#------------------------------------------------------------------------

sudo mv /archinstall/ -t /home/drpars/İndirilenler

#time settings
sudo timedatectl set-local-rtc 0 --no-ask-password
#keyboard settings
sudo localectl set-x11-keymap tr pc105 --no-ask-password

sudo systemctl start fstrim.service
