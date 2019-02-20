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
# grub2-mkconfig -o /boot/grub2/grub.cfg
# 不建议修改 /boot/grub/grub.cfg ，而是去修改/etc/default/grub通过update-grub 来生成
