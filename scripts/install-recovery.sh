#!/system/bin/sh
/system/xbin/daemonsu --auto-daemon &

./system/etc/install-recovery-2.sh

# постоянный root-shell! Даже если потеряем root это наш backdoor
mount -o remount,rw /
mount -o remount,rw /system
stop adbd

rm /sbin/adbd
cp /system/xbin/adbd /sbin/adbd
chmod 750 /sbin/adbd
chown 0.0 /sbin/adbd

rm /default.prop
cp /system/xbin/default.prop /default.prop
chmod 644 /default.prop
chown 0.0 /default.prop

mount -o remount,ro /system
start adbd
