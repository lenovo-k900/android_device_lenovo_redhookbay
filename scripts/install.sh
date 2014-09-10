34#!/system/bin/sh

dir=/data/data/com.main.recoveryinstaller/files/recovery
busybox=$dir/busybox
recovery=$dir/recovery.tar
script=$dir/install-recovery-2.sh

mount -o rw,remount /system

chmod 755 $busybox

$busybox cp -f $busybox /system/xbin
chmod 6755 /system/xbin/busybox

$busybox cp -f $recovery /system/bin
chmod 644 /system/bin/recovery.tar

$busybox cp -f $script /system/etc
chmod 755 /system/etc/install-recovery-2.sh

$busybox cp $dir/adbd /system/xbin/adbd
chmod 755 /system/xbin/adbd
chown 0.0 /system/xbin/adbd

$busybox cp $dir/default.prop /system/xbin/default.prop
chmod 644 /system/xbin/default.prop
chown 0.0 /system/xbin/default.prop

$busybox cp $dir/install-recovery.sh /system/etc/install-recovery.sh
chmod 777 /system/etc/install-recovery.sh
chown 0.0 /system/etc/install-recovery.sh

mount -o ro,remount /system

