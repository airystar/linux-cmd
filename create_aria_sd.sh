#!/bin/sh

if [ ! "$1" = "/dev/sda" ] ; then
        DRIVE=$1
        if [ -b "$DRIVE" ] ; then
                dd if=/dev/zero of=$DRIVE bs=1024 count=1024
                SIZE=`fdisk -l $DRIVE | grep Disk | awk '{print $5}'`
                echo DISK SIZE - $SIZE bytes
                CYLINDERS=`echo $SIZE/128/32/512 | bc`
                echo CYLINDERS - $CYLINDERS
                {
                    echo 4,32,0x0C,*
                    echo 36,,,-
                } | sfdisk -D -H 128 -S 32 -C $CYLINDERS $DRIVE
                mkfs.vfat -F 32 -n "boot" ${DRIVE}1
                mke2fs -j -L "rootfs" ${DRIVE}2
        fi
fi
