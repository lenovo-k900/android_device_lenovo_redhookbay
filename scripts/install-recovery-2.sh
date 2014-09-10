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

# turn on red LED for 1 second
echo 255 > /sys/class/leds/intel_keypad_led/brightness
sleep 1
echo 0 > /sys/class/leds/intel_keypad_led/max_brightness

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
	mount -o rw,remount /dev/block/mmcblk0p8 /system
	mount -o rw,remount /dev/block/mmcblk0p9 /data
  # restart init
  chroot / /init
  
else

  start

fi
