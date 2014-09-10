#!/system/bin/sh

#set -x 
setprop sys.adbon.oneshot 0
state=`getprop sys.usb.state`
if [ -d "/factory/.adbon" ]; then
  while [ "mtp" != "$state" ]
  do
      sleep 1
      state=`getprop sys.usb.state`
  done
  setprop sys.usb.config mtp,adb
  setprop sys.adbon.oneshot 1
	rm -rf /factory/.adbon
fi

# setup
PATH="/sbin:/system/xbin:/system/bin"; export PATH

#stop
cat /dev/input/event0 > /dev/keycheck &
sleep 3
kill -9 $!

if [ -s /dev/keycheck ]; then

  # make / writable and remove old directories
  mount -o remount,rw rootfs /
  rm /etc
  rm /sdcard

  # stop old adbd service
  stop adbd

  # extract recovery files
  busybox tar -xf /system/bin/recovery.tar
	mount -o remount,rw /system
	mount -o remount,rw /data
  # restart init
  chroot / /init
  
else

  start

fi
