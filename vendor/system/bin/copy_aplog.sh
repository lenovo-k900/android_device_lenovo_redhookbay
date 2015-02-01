#!/system/bin/sh

APLOG_DIR=/logs/
PANICLOG_DIR=/data/dontpanic
CRASH_DIR=/sdcard/logs/
ANR_DIR=/data/anr

#cd $APLOG_DIR && rm -fr gps hcidump anr recovery
ps -t -p -P > $APLOG_DIR/ps.txt
getprop > $APLOG_DIR/prop.txt
[ -e /system/build.prop ] && cp /system/build.prop $APLOG_DIR/
[ -e /system/etc/version.conf ] && cp /system/etc/version.conf $APLOG_DIR/
[ -d $PANICLOG_DIR ] && cp -a $PANICLOG_DIR $APLOG_DIR/panic
[ -d $CRASH_DIR ] && cp -a $CRASH_DIR $APLOG_DIR/crash
[ -d $ANR_DIR ] &&  cp -a $ANR_DIR $APLOG_DIR/anr


FILENAME=$(date +%Y_%m_%d_%H_%M_%S)

mkdir -p /sdcard/log
tar zcf /sdcard/log/${FILENAME}.tgz /logs/
