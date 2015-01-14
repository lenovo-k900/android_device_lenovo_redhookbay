DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlays

## During Development we will turn off all security etc.
ADDITIONAL_DEFAULT_PROPERTIES := \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debugabble=1 
#
#
#
#
LOCAL_PATH := device/lenovo/redhookbay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/blobs/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Ramdisk fstab / rc files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.watchdog.rc:root/init.watchdog.rc \
    $(LOCAL_PATH)/ramdisk/fstab.charger.redhookbay:root/fstab.charger.redhookbay \
    $(LOCAL_PATH)/ramdisk/fstab.redhookbay:root/fstab.redhookbay \
    $(LOCAL_PATH)/ramdisk/init.avc.rc:root/init.avc.rc \
    $(LOCAL_PATH)/ramdisk/init.bt.rc:root/init.bt.rc \
    $(LOCAL_PATH)/ramdisk/init.debug.rc:root/init.debug.rc \
    $(LOCAL_PATH)/ramdisk/init.diag.rc:root/init.diag.rc \
    $(LOCAL_PATH)/ramdisk/init.bt.vendor.rc:root/init.bt.vendor.rc \
    $(LOCAL_PATH)/ramdisk/init.common.rc:root/init.common.rc \
    $(LOCAL_PATH)/ramdisk/init.gps.rc:root/init.gps.rc \
    $(LOCAL_PATH)/ramdisk/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/ramdisk/init.platform.usb.rc:root/init.platform.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
    $(LOCAL_PATH)/ramdisk/init.redhookbay.rc:root/init.redhookbay.rc \
    $(LOCAL_PATH)/ramdisk/init.wifi.rc:root/init.wifi.rc \
    $(LOCAL_PATH)/ramdisk/init.wifi.vendor.rc:root/init.wifi.vendor.rc \
    $(LOCAL_PATH)/ramdisk/init.wireless.rc:root/init.wireless.rc \
    $(LOCAL_PATH)/ramdisk/props.board.rc:root/props.board.rc \
    $(LOCAL_PATH)/ramdisk/props.platform.rc:root/props.platform.rc \
    $(LOCAL_PATH)/ramdisk/props.rc:root/props.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.modules.blacklist:root/ueventd.modules.blacklist \
    $(LOCAL_PATH)/ramdisk/ueventd.redhookbay.rc:root/ueventd.redhookbay.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

#
#
#
#
# for external SD card
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/blobs/configs/platform.xml:system/etc/permissions/platform.xml

# media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/blobs/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/blobs/configs/media_profiles.xml:system/etc/media_profiles.xml

# audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/blobs/configs/audio_effects.conf:system/vendor/etc/audio_effects.conf

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/blobs/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/blobs/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
	$(LOCAL_PATH)/blobs/remount.sh:recovery/root/sbin/remount.sh \
	$(LOCAL_PATH)/ramdisk/busybox:root/system/bin/busybox \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/blobs/watchdogd:recovery/root/sbin/watchdogd \
	$(LOCAL_PATH)/blobs/watchdogd:recovery/root/watchdogd \
	$(LOCAL_PATH)/blobs/watchdogd:root/watchdogd \
	$(LOCAL_PATH)/blobs/file_contexts:root/file_contexts \
	$(LOCAL_PATH)/ramdisk/ia_watchdogd:system/bin/ia_watchdogd \
	$(LOCAL_PATH)/ramdisk/init:root/init
	

# Inherit dalvik configuration and the rest of the platform
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
