#!/bin/bash

#You can run 'sudo nmtui' command to set your network

pacman -S --needed --noconfirm pacman-contrib bash-completion usbutils lsof dmidecode dialog
pacman -S --needed --noconfirm zip unzip unrar p7zip lzop
pacman -S --needed --noconfirm rsync traceroute bind-tools
#kernel
pacman -S --needed --noconfirm linux linux-headers
#network                                                                 
pacman -S --needed --noconfirm cronie xdg-user-dirs haveged samba
#bluetooth
pacman -S --needed --noconfirm bluez bluez-utils
#file-system #gvfs-google
pacman -S --needed --noconfirm ntfs-3g exfatprogs gptfdisk nfs-utils fuse2 fuse3 fuseiso mtools gvfs gvfs-afc gvfs-goa gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb dosfstools
#sound
pacman -S --needed --noconfirm alsa-utils alsa-plugins pulseaudio pulseaudio-alsa pulseaudio-bluetooth
#printer
pacman -S --needed --noconfirm cups cups-pdf cups-filters libcups
#XOrg
pacman -S --needed --noconfirm xorg-server xorg-xinit
#fonts
pacman -S --needed --noconfirm dina-font tamsyn-font ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid gnu-free-fonts ttf-ibm-plex ttf-liberation ttf-linux-libertine noto-fonts ttf-roboto tex-gyre-fonts ttf-ubuntu-font-family ttf-anonymous-pro ttf-cascadia-code ttf-fantasque-sans-mono ttf-fira-mono ttf-hack ttf-fira-code ttf-inconsolata ttf-jetbrains-mono ttf-monofur cantarell-fonts inter-font ttf-opensans gentium-plus-font ttf-junicode noto-fonts-cjk noto-fonts-emoji gsfonts sdl_ttf xorg-fonts-type1 ttf-ubuntu-font-family
#multimedia
pacman -S --needed --noconfirm gst-plugins-base gst-plugins-good gst-plugins-ugly gst-libav
#command
pacman -S --needed --noconfirm xdg-utils coreutils util-linux procps-ng exa
#if the kernel is "...-lts", install acpi_call-lts
pacman -S --needed --noconfirm nvme-cli
pacman -S --needed --noconfirm acpi acpi_call acpid


systemctl enable cronie
systemctl enable haveged
systemctl enable bluetooth
systemctl enable cups.service
systemctl enable sshd
systemctl enable fstrim.timer
systemctl enable acpid
