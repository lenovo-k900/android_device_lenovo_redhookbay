#!/sbin/sh

#force unmount partitions
#umount -l /factory
#umount -l /spare
umount -l /config
umount -l /cache
umount -l /logs
umount -l /system
umount -l /data