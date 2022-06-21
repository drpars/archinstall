#!/bin/bash

git clone https://gitlab.com/drpars/dotfiles.git
cp -r dotfiles/.config/* /home/drpars/.config/
cp dotfiles/.xinitrc /home/drpars
cp dotfiles/.zshrc /home/drpars
cp dotfiles/.zshenv /home/drpars
sudo chmod +x /home/drpars/.config/polybar/launch.sh
sudo chmod +x /home/drpars/.config/rofi/powermenu

sudo cp -r dotfiles/.config/* /root/.config
sudo cp dotfiles/.zshrc /root
sudo cp dotfiles/.zshenv /root

sudo cp -r /home/drpars/.local/icons/Qogir* /usr/share/icons
# themes - nordic 
sudo cp dotfiles/GtkTheme/Nordic-darker-standard-buttons.tar.xz /home/drpars/İndirilenler
sudo cp -r dotfiles/Duvar\ kağıtları /home/drpars/Resimler
sudo cp dotfiles/lightdm/* /etc/lightdm/

#sudo chmod 644 /root
gsettings set org.cinnamon.desktop.default-applications.terminal exec alacritty
