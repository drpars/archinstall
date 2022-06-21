#!/bin/bash

#drpars is the choosen user name, you can change it.
#Change the word 'passwrd' to whatever password you want to use

echo root:passwrd | chpasswd
useradd -m -G wheel drpars
echo drpars:passwrd | chpasswd
sed -i '/# %wheel ALL=(ALL:ALL) ALL/s/^# //g' /etc/sudoers
