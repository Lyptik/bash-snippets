#!/bin/sh

# This script shows which dd command to use to copy an iso hybrid image to an usb key

# Uncomment next line to enable debug output
#set -x

[ "$1" = "-h" ] || [ "$1" = "--help" ] || [ $# != 0 ] && { echo "Usage : $0"; exit 1; }

echo "Are you on OSX ? (y/n)"
read answer
[ answer = "y" ] && echo "
dd command is :
diskutil list # find your disk
diskutil unmountDisk /dev/disk? &&
sudo dd if=/Volumes/your/path/yourIso.iso of=/dev/disk? bs=1m
sync &&
diskutil eject /dev/disk?
" && exit;

echo "Are you on Linux ? (y/n)"
read answer
[ answer = "y" ] && echo "
dd command is :

sudo umount /dev/sd? &&
sudo dd if=/media/your/path/yourIso.iso of=/dev/sd? bs=4M &&
sync &&
sudo eject /dev/sd?
" && exit;

echo "Done!"
#beep
