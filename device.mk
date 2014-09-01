DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlays

## During Development we will turn off all security etc.
ADDITIONAL_DEFAULT_PROPERTIES := \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debugabble=1 

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
	$(LOCAL_PATH)/ramdisk/busybox:root/system/bin/busybox \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/blobs/watchdogd:recovery/root/sbin/watchdogd \
	$(LOCAL_PATH)/blobs/watchdogd:recovery/root/watchdogd \
	$(LOCAL_PATH)/blobs/watchdogd:root/watchdogd \
	$(LOCAL_PATH)/ramdisk/ia_watchdogd:system/bin/ia_watchdogd \
	$(LOCAL_PATH)/ramdisk/init:root/init
	

# Inherit dalvik configuration and the rest of the platform
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
