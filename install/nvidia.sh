#!/bin/bash

#if the kernel is "...-lts", install nvidia-lts and reconfiigure HOOK file
pacman -S --needed --noconfirm nvidia-dkms nvidia-utils nvidia-settings

#/etc/mkinitcpio MODULES
sed -i "s/MODULES=()/MODULES=(nvme nvidia nvidia_modeset nvidia_uvm nvidia_drm)/g" /etc/mkinitcpio.conf
#Create HOOK file to run automatic command when gpu driver update : "mkinitcpio -P"
mkdir /etc/pacman.d/hooks/
cat > /etc/pacman.d/hooks/nvidia.hook <<EOF
[Trigger]
Operation=Install
Operation=Upgrade
Operation=Remove
Type=Package
Target=nvidia-dkms
Target=linux
# Change the linux part above and in the Exec line if a different kernel is used
[Action]
Description=Update Nvidia module in initcpio
Depends=mkinitcpio
When=PostTransaction
NeedsTargets
Exec=/usr/bin/mkinitcpio -P
EOF
