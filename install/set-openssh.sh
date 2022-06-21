#!/bin/bash

pacman -S --needed --noconfirm openssh

# systemctl stop sshd 
# systemctl disable sshd
# systemctl mask sshd
# systemctl unmask sshd
# systemctl enable sshd

#PermitRootLogin prohibit-password
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
#PasswordAuthentication yes
sed -i '/#PasswordAuthentication yes/s/^#//g' /etc/ssh/sshd_config

systemctl enable --now sshd.service
