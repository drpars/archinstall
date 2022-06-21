#!/bin/bash

#--------------Grub--Boot-----------------------------------
pacman -S --needed --noconfirm efibootmgr grub os-prober
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ArchLinux
sed -i '/#GRUB_DISABLE_OS_PROBER=false/s/^#//g' /etc/default/grub
sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="nvidia-drm.modeset=1"/g' /etc/default/grub
LC_ALL=C grub-mkconfig -o /boot/grub/grub.cfg
#-----------------------------------------------------------
