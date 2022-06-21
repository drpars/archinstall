#!/bin/bash

#These are my personal settings. If it doesn't suit you, you can change it.
#Partition the disk
#You can follow and read archinstall/config.sh file


loadkeys trq
setfont LatArCyrHeb-16
sed -i '/#tr_TR.UTF-8/s/^#//g' /etc/locale.gen
locale-gen
export LANG=tr_TR.UTF-8
timedatectl set-timezone Europe/Istanbul
pacman -Syy

# --------------------1tb------nvme için-EXT4------------------------------------
#mkfs.vfat -F32 /dev/nvme1n1p1
mkfs.ext4 -L Root -F /dev/nvme1n1p1
mkfs.ext4 -L Home -F /dev/nvme1n1p2
#xfs dosya sistemi kurulacaksa xfsprogs kurulmalı
#mkfs.xfs -f -m crc=1,finobt=1,bigtime=1 -L Home /dev/nvme1n1p2
mount /dev/nvme1n1p1 /mnt
mkdir -p /mnt/{boot/efi,home}
mount /dev/nvme0n1p1 /mnt/boot/efi
mount /dev/nvme1n1p2 /mnt/home
dd if=/dev/zero of=/mnt/swapfile bs=1M count=8196 status=progress
chmod 600 /mnt/swapfile
mkswap /mnt/swapfile
swapon /mnt/swapfile
#------------------------------------------------------------------------------

cp -R archinstall/ /mnt/
chmod +x /mnt/archinstall/*.sh
pacstrap /mnt base base-devel linux linux-firmware intel-ucode vim neovim git networkmanager
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt ./archinstall/config.sh
