
#!/bin/bash

#These are my personal settings. If it doesn't suit you, you can change it.
#You can follow and read archinstall/config.sh file

loadkeys trq
setfont LatArCyrHeb-16
sed -i '/#tr_TR.UTF-8/s/^#//g' /etc/locale.gen
locale-gen
export LANG=tr_TR.UTF-8
timedatectl set-ntp true
pacman -Syy & sleep 3s
# ------------1tb lık seagate baaracuda nvme için-EXT4---------------------------
mkfs.vfat -F32 /dev/nvme0n1p1
mkfs.ext4 -F /dev/nvme0n1p2
#xfs dosya sistemi kurulacaksa xfsprogs kurulmalı
#mkfs.xfs -f -m crc=1,finobt=1,bigtime=1 -L Home /dev/nvme1n1p2
mount /dev/nvme0n1p2 /mnt
mkdir -p /mnt/boot/efi
mount /dev/nvme0n1p1 /mnt/boot/efi
dd if=/dev/zero of=/mnt/swapfile bs=1M count=2048 status=progress
chmod 600 /mnt/swapfile
mkswap /mnt/swapfile
swapon /mnt/swapfile
#------------------------------------------------------------------------------

cp -R archinstall/ /mnt/
chmod +x /mnt/archinstall/*.sh
pacstrap /mnt base base-devel linux linux-firmware intel-ucode vim neovim git networkmanager
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt ./archinstall/boot.sh
