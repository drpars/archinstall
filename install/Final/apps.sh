#!/bin/bash

#---------------------------------------------------------------------------------------------
#office
pacman -S --needed --noconfirm libreoffice-fresh libreoffice-fresh-tr
#internet
pacman -S --needed --noconfirm firefox firefox-i18n-tr thunderbird-i18n-tr thunderbird chromium wget uget transmission-gtk
#virtualbox
#after installation reboot or run module(/usr/lib/modules-load.d/virtualbox-host-modules-arch.conf)
# you can run sudo vboxreload, if updated virtualbox
#for wayland user
#gsettings get org.gnome.mutter.wayland xwayland-grab-access-rules
#gsettings set org.gnome.mutter.wayland xwayland-grab-access-rules "['VirtualBox Machine']"
pacman -S --needed --noconfirm virtualbox virtualbox-host-modules-arch virtualbox-guest-iso virtualbox-guest-utils
gpasswd -a drpars vboxusers
gpasswd -a drpars vboxsf
#media 
pacman -S --needed --noconfirm smplayer smplayer-skins smplayer-themes rhythmbox simplescreenrecorder
#disk
pacman -S --needed --noconfirm gnome-disk-utility gparted
#java
sudo pacman -S --noconfirm jre-openjdk-headless jre-openjdk jdk-openjdk openjdk-doc openjdk-src
#utility
pacman -S --needed --noconfirm zsh zsh-completions fd bat cmatrix screenfetch neofetch mc bashtop psutils python-psutil piper conky grub-customizer
#other
pacman -S --needed --noconfirm go gdb ctags nodejs npm ruby rust xsel ripgrep python python-pip xmlstarlet xorg-xcursorgen lazygit composer php julia
#formatter
sudo pacman -S --noconfirm prettier shfmt codespell stylua

pacman -S --needed steam
#............................................................................................


#settings
#bluetooth
sed -i 's/#AutoEnable=false/AutoEnable=true/g' /etc/bluetooth/main.conf

systemctl enable --now vboxservice.service
