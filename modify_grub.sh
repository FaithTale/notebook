#!/bin/bash
set -e
[ -n "$DEBUG" ] && set -x

cp /boot/grub/grub.conf /boot/grub/grub.conf.bak

grubby --add-kernel=/boot/vmlinuz-2.6.38.3 \
    --title='ufs kernel 2.6.38.3 (dctcp patch)' \
    --copy-default \
    --make-default \
    --initrd=/boot/initramfs-2.6.38.3.img

set +e
[ -n "$DEBUG" ] && set +x

exit 0
