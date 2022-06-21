#!/bin/bash

#-----------------------------------------------------------
yay -S --needed --noconfirm timeshift teamviewer
# startup-settings-git
yay -S --needed --noconfirm isomaster stacer-bin webapp-manager
yay -S --needed --noconfirm nerd-fonts-hack

#pamac
# yay -S --needed --noconfirm archlinux-appstream-data-pamac pamac-aur
#terminal
# yay -S --needed --noconfirm gnome-terminal-transparency
#formatter
yay -S --needed --noconfirm lua_formatter
#driver
yay -S --noconfirm mkinitcpio-firmware
#...........................................................



sudo systemctl enable teamviewerd.service
