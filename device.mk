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

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Ramdisk fstab / rc files
PRODUCT_COPY_FILES += \
$(call find-copy-subdir-files,*,$(LOCAL_PATH)/ramdisk/rc,root)

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
# VENDOR
# 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/bin/pvrsrvctl:system/vendor/bin/pvrsrvctl \
    $(LOCAL_PATH)/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/vendor/lib/libbt-vendor.so:system/vendor/lib/libbt-vendor.so \
    $(LOCAL_PATH)/vendor/lib/libglslcompiler.so:system/vendor/lib/libglslcompiler.so \
    $(LOCAL_PATH)/vendor/lib/libglslcompiler.so.1:system/vendor/lib/libglslcompiler.so.1 \
    $(LOCAL_PATH)/vendor/lib/libglslcompiler.so.1.11.2630400:system/vendor/lib/libglslcompiler.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/libIMGegl.so:system/vendor/lib/libIMGegl.so \
    $(LOCAL_PATH)/vendor/lib/libIMGegl.so.1:system/vendor/lib/libIMGegl.so.1 \
    $(LOCAL_PATH)/vendor/lib/libIMGegl.so.1.11.2630400:system/vendor/lib/libIMGegl.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/libpvr2d.so:system/vendor/lib/libpvr2d.so \
    $(LOCAL_PATH)/vendor/lib/libpvr2d.so.1:system/vendor/lib/libpvr2d.so.1 \
    $(LOCAL_PATH)/vendor/lib/libpvr2d.so.1.11.2630400:system/vendor/lib/libpvr2d.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/libpvrANDROID_WSEGL.so:system/vendor/lib/libpvrANDROID_WSEGL.so \
    $(LOCAL_PATH)/vendor/lib/libpvrANDROID_WSEGL.so.1:system/vendor/lib/libpvrANDROID_WSEGL.so.1 \
    $(LOCAL_PATH)/vendor/lib/libpvrANDROID_WSEGL.so.1.11.2630400:system/vendor/lib/libpvrANDROID_WSEGL.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/libPVRRS.so:system/vendor/lib/libPVRRS.so \
    $(LOCAL_PATH)/vendor/lib/libPVRRS.so.1:system/vendor/lib/libPVRRS.so.1 \
    $(LOCAL_PATH)/vendor/lib/libPVRRS.so.1.11.2630400:system/vendor/lib/libPVRRS.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/libPVRScopeServices.so:system/vendor/lib/libPVRScopeServices.so \
    $(LOCAL_PATH)/vendor/lib/libPVRScopeServices.so.1:system/vendor/lib/libPVRScopeServices.so.1 \
    $(LOCAL_PATH)/vendor/lib/libPVRScopeServices.so.1.11.2630400:system/vendor/lib/libPVRScopeServices.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/librsccompiler.so:system/vendor/lib/librsccompiler.so \
    $(LOCAL_PATH)/vendor/lib/librsccompiler.so.1:system/vendor/lib/librsccompiler.so.1 \
    $(LOCAL_PATH)/vendor/lib/librsccompiler.so.1.11.2630400:system/vendor/lib/librsccompiler.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/librsccore.bc:system/vendor/lib/librsccore.bc \
    $(LOCAL_PATH)/vendor/lib/librsccore.bc.1:system/vendor/lib/librsccore.bc.1 \
    $(LOCAL_PATH)/vendor/lib/librsccore.bc.1.11.2630400:system/vendor/lib/librsccore.bc.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/libsrv_init.so:system/vendor/lib/libsrv_init.so \
    $(LOCAL_PATH)/vendor/lib/libsrv_init.so.1:system/vendor/lib/libsrv_init.so.1 \
    $(LOCAL_PATH)/vendor/lib/libsrv_init.so.1.11.2630400:system/vendor/lib/libsrv_init.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/libsrv_um.so:system/vendor/lib/libsrv_um.so \
    $(LOCAL_PATH)/vendor/lib/libsrv_um.so.1:system/vendor/lib/libsrv_um.so.1 \
    $(LOCAL_PATH)/vendor/lib/libsrv_um.so.1.11.2630400:system/vendor/lib/libsrv_um.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/libusc.so:system/vendor/lib/libusc.so \
    $(LOCAL_PATH)/vendor/lib/libusc.so.1:system/vendor/lib/libusc.so.1 \
    $(LOCAL_PATH)/vendor/lib/libusc.so.1.11.2630400:system/vendor/lib/libusc.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/egl/libEGL_POWERVR_SGX544_115.so:system/vendor/lib/egl/libEGL_POWERVR_SGX544_115.so \
    $(LOCAL_PATH)/vendor/lib/egl/libEGL_POWERVR_SGX544_115.so.1:system/vendor/lib/egl/libEGL_POWERVR_SGX544_115.so.1 \
    $(LOCAL_PATH)/vendor/lib/egl/libEGL_POWERVR_SGX544_115.so.1.11.2630400:system/vendor/lib/egl/libEGL_POWERVR_SGX544_115.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX544_115.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX544_115.so \
    $(LOCAL_PATH)/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX544_115.so.1:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX544_115.so.1 \
    $(LOCAL_PATH)/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX544_115.so.1.11.2630400:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX544_115.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/egl/libGLESv2_POWERVR_SGX544_115.so:system/vendor/lib/egl/libGLESv2_POWERVR_SGX544_115.so \
    $(LOCAL_PATH)/vendor/lib/egl/libGLESv2_POWERVR_SGX544_115.so.1:system/vendor/lib/egl/libGLESv2_POWERVR_SGX544_115.so.1 \
    $(LOCAL_PATH)/vendor/lib/egl/libGLESv2_POWERVR_SGX544_115.so.1.11.2630400:system/vendor/lib/egl/libGLESv2_POWERVR_SGX544_115.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/hw/gralloc.redhookbay.so:system/vendor/lib/hw/gralloc.redhookbay.so \
    $(LOCAL_PATH)/vendor/lib/hw/gralloc.redhookbay.so.1.11.2630400:system/vendor/lib/hw/gralloc.redhookbay.so.1.11.2630400 \
    $(LOCAL_PATH)/vendor/lib/hw/gralloc.redhookbay.so.1:system/vendor/lib/hw/gralloc.redhookbay.so.1

# non-opensource things
PRODUCT_COPY_FILES += \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/bin,system/bin) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc,system/etc) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/atomisp,system/etc/atomisp) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/bluetooth,system/etc/bluetooth) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/dhcp6c,system/etc/dhcp6c) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/dhcpcd,system/etc/dhcpcd) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/dhcpcd/dhcpcd-hooks,system/etc/dhcpcd/dhcpcd-hooks) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/firmware,system/etc/firmware) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/firmware/modem,system/etc/firmware/modem) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/parameter-framework,system/etc/parameter-framework) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/parameter-framework/Settings/Audio,system/etc/parameter-framework/Settings/Audio) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/parameter-framework/Settings/Vibrator,system/etc/parameter-framework/Settings/Vibrator) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/parameter-framework/Structure/Audio,system/etc/parameter-framework/Structure/Audio) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/parameter-framework/Structure/Vibrator,system/etc/parameter-framework/Structure/Vibrator) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/ppp,system/etc/ppp) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/rril,system/etc/rril) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/security,system/etc/security) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/security/cacerts,system/etc/security/cacerts) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/security/EPID_certs,system/etc/security/EPID_certs) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/telephony,system/etc/telephony) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/widi,system/etc/widi) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/wifi,system/etc/wifi) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/framework,system/framework) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/lib,system/lib) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/lib/hw,system/lib/hw) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/xbin,system/xbin) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/modules/prebuilt/lib/modules,system/lib/modules)
    
# for external SD card
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/blobs/configs/platform.xml:system/etc/permissions/platform.xml

# Houdini
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/houdini/system,system)

PRODUCT_PACKAGES += \
    libhoudini_hook \
    houdini_hook

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
