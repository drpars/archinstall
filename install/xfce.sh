#!/bin/bash


pacman -S --needed xfce4 xfce4-goodies lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings plank pavucontrol --noconfirm
pacman -S gnome-system-tools alacarte mugshot materia-gtk-theme --noconfirm



systemctl enable lightdm.service
