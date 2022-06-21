#!/bin/bash


#--------------------------------------------------------------------------------------------
#plasma package
pacman -S --needed --noconfirm bluedevil breeze breeze-gtk discover drkonqi kactivitymanagerd kde-cli-tools kde-gtk-config kdecoration kdeplasma-addons kgamma5 khotkeys kinfocenter kmenuedit kscreen kscreenlocker ksshaskpass ksysguard kwallet-pam kwayland-integration kwayland-server kwin kwrited libkscreen libksysguard milou oxygen plasma-browser-integration plasma-desktop plasma-disks plasma-firewall plasma-integration plasma-nm plasma-pa plasma-sdk plasma-systemmonitor plasma-thunderbolt plasma-vault plasma-workspace plasma-workspace-wallpapers polkit-kde-agent powerdevil sddm-kcm systemsettings xdg-desktop-portal-kde
#kde-system
pacman -S --needed --noconfirm dolphin kcron ksystemlog
#kde-utilies
pacman -S --needed --noconfirm ark kate kcalc kcharselect kdialog kfind kgpg konsole kwalletmanager kwrite print-manager kdiskmark
#kde network
pacman -S --needed --noconfirm kdenetwork-filesharing kio-extras signon-kwallet-extension zeroconf-ioslave
#kde-graphics
pacman -S --needed --noconfirm gwenview kcolorchooser kdegraphics-mobipocket kdegraphics-thumbnailers kolourpaint okular spectacle
#kde-multimedia 
pacman -S --needed --noconfirm audiocd-kio ffmpegthumbs
#kdesdk 
pacman -S --needed --noconfirm dolphin-plugins kdesdk-thumbnailers
pacman -S --needed --noconfirm partitionmanager gnome-keyring xsettingsd sddm
pacman -S --needed --noconfirm packagekit-qt5
#themes
pacman -S --needed --noconfirm kvantum-qt5
#sudo -u drpars yay -S --noconfirm latte-dock-git 
#sudo -u drpars yay -S --noconfirm plasma5-applets-virtual-desktop-bar-git
#---------------------------------------------------------------------------------------------



systemctl enable sddm
