#!/bin/bash

sudo pacman -S --needed --noconfirm xorg xorg-xinit xorg-fonts-misc i3-gaps rofi lxappearance feh

#progs - trash-cli
sudo pacman -S --needed --noconfirm alacritty mlocate zathura zathura-cb zathura-pdf-mupdf mupdf pavucontrol
sudo pacman -S --needed --noconfirm nemo cinnamon-translations nemo-fileroller mate-polkit

#DisplayManager
sudo pacman -S --needed --noconfirm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

#ranger
sudo pacman -S --needed --noconfirm ranger
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

#themes
sudo pacman -S --needed --noconfirm gnome-themes-extra

#
yay -S --needed --noconfirm lf-git
# picom & polybar
yay -S --needed --noconfirm picom-git polybar ttf-unifont siji-git

sudo systemctl enable lightdm.service
