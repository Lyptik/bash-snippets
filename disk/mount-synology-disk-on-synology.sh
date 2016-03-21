#!/bin/sh

# don't run this script, not tested !

# SIMPLE VOLUMES

# Example NAS ssh connection
# ssh root@theoriz-nas.local -p 2222

echo "Check here that there is no md9 used as we are going to use it after."
cat /proc/mdstat
sleep 2

# ADD CODE

mdadm -A -R /dev/md9 /dev/sdq3
mkdir -p /volume1/from_USB
mount /dev/md9 /volume1/from_USB
echo "Done. After copying, put the correct permissions. cd yourdir && chown -R david:users ./"
echo "Don't forget to unmount the partition : umount /volume1/from_USB or via the graphical interface"

# LVM VOLUMES (Default on synology)

echo "Check here that there is no md9 used as we are going to use it after."
echo "if there is do those two commands : mdadm -S /dev/md9 mdadm -R /dev/md9"
cat /proc/mdstat
sleep 2
echo "Check lvm volumes before plugging the disk"
lvm vgscan
echo "Plug the disk"
sleep 5
mdadm -A -R /dev/md9 /dev/sdq5
echo "Check lvm volumes"
lvm vgscan
sleep 2
vgchange -a y vg1000
mkdir -p /mnt/usb
mount /dev/vg1000/lv /mnt/usb
echo "Done. After copying, put the correct permissions. cd yourdir && chown -R david:users ./"
echo "Don't forget to unmount the partition : umount /volume1/from_USB or via the graphical interface"
