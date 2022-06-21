#!/bin/bash

cat >> /etc/fstab << EOF

/dev/disk/by-label/Data /mnt/Data auto nosuid,nodev,nofail,x-gvfs-show,=uid=1000 0 0
/dev/disk/by-label/Veri /mnt/Veri auto nosuid,nodev,nofail,x-gvfs-show,uid=1000 0 0
/dev/disk/by-label/Oyunlar /mnt/Oyunlar auto nosuid,nodev,nofail,x-gvfs-show,noauto,uid=1000 0 0
EOF
