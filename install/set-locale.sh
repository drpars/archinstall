#!/bin/bash

ln -sf /usr/share/zoneinfo/Europe/Istanbul /etc/localtime
hwclock --systohc --localtime

sed -i '/#tr_TR.UTF-8/s/^#//g' /etc/locale.gen
locale-gen

cat > /etc/locale.conf << EOF
LANG=tr_TR.UTF-8
LANGUAGE=tr_TR
LC_ADDRESS=tr_TR.UTF-8
LC_COLLATE=tr_TR.UTF-8
LC_CTYPE=tr_TR.UTF-8
LC_IDENTIFICATION=tr_TR.UTF-8
LC_MEASUREMENT=tr_TR.UTF-8
LC_MESSAGES=tr_TR.UTF-8
LC_MONETARY=tr_TR.UTF-8
LC_NAME=tr_TR.UTF-8
LC_NUMERIC=tr_TR.UTF-8
LC_PAPER=tr_TR.UTF-8
LC_TELEPHONE=tr_TR.UTF-8
LC_TIME=tr_TR.UTF-8
EOF

cat > /etc/vconsole.conf << EOF
KEYMAP=trq
FONT=LatArCyrHeb-16
EOF

echo "PANTHERA" > /etc/hostname
cat > /etc/hosts << EOF
127.0.0.1 localhost
::1 localhost
127.0.1.1 PANTHERA.localdomain  PANTHERA
EOF
