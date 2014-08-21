DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlays

## During Development we will turn off all security etc.
ADDITIONAL_DEFAULT_PROPERTIES := \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debugabble=1 

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/blobs/watchdogd:recovery/root/sbin/watchdogd \

# Inherit dalvik configuration and the rest of the platform
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_NAME := redhookbay
PRODUCT_DEVICE := redhookbay
PRODUCT_MANUFACTURER := Lenovo
