#!/bin/bash

cp /archinstall/Final/smb.conf /etc/samba/
systemctl enable --now smb.service nmb.service
mkdir /var/lib/samba/usershares
groupadd -r sambashare
chown root:sambashare /var/lib/samba/usershares
chmod 1770 /var/lib/samba/usershares
gpasswd sambashare -a drpars
smbpasswd -a drpars
