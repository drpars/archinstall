#!/bin/bash

pacman -S --needed --noconfirm baobab eog evince file-roller gdm gedit gnome-backgrounds gnome-calculator gnome-calendar gnome-characters gnome-color-manager gnome-control-center gnome-disk-utility gnome-font-viewer gnome-keyring gnome-logs gnome-menus gnome-photos gnome-remote-desktop gnome-session gnome-settings-daemon gnome-shell gnome-shell-extensions  gnome-terminal gnome-software gnome-themes-extra gnome-user-docs gnome-user-share grilo-plugins mutter nautilus sushi tracker tracker3-miners tracker-miners xdg-user-dirs-gtk

pacman -S --needed --noconfirm gnome-tweaks gnome-sudoku gnome-sound-recorder gnome-nettool gnome-mines gnome-mahjongg gnome-chess ghex
pacman -S --needed --noconfirm gnome-software-packagekit-plugin packagekit

#for forced wayland support (gdm 42 rc version)
#ln -s /dev/null /etc/udev/rules.d/61-gdm.rules
systemctl enable gdm.service
