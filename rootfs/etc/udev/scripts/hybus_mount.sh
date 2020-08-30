#!/bin/sh
#
# Called from udev
#
# Attempt to mount any added block devices and umount any removed devices
if [ ! -d /mnt/Data ] ; then
	mkdir /mnt/Data
fi

#if [ ! -d /mnt/system ] ; then
#	mkdir /mnt/system
#fi

if [ "$ACTION" = "add" ] ; then
	mount -t ext4 /dev/mmcblk0p2 /mnt/Data
#	mount -t vfat /dev/mmcblk0p1 /mnt/system
fi

if [ "$ACTION" = "remove" ] ; then
	umount /mnt/Data
#	umount /mnt/system
fi

