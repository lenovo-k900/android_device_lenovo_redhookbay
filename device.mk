LOCAL_PATH := device/lenovo/redhookbay

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# For userdebug/eng builds
ADDITIONAL_DEFAULT_PROPERTIES += \
	wifi.interface=wlan0 \
	ro.sf.lcd_density=480 \
	panel.physicalWidthmm=54 \
	panel.physicalHeightmm=95 \
	ro.opengles.version=131072 \
	gsm.net.interface=rmnet0 \
	persist.system.at-proxy.mode=0 \
	ro.secure=0 \
	ro.adb.secure=0 \
	service.adb.root=1 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
	persist.ril-daemon.disable=0 \
	persist.radio.ril_modem_state=1 \
	persist.sys.usb.config=mtp,mass_storage

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Prebuild kernel
LOCAL_KERNEL := $(LOCAL_PATH)/blobs/kernel
PRODUCT_COPY_FILES += \
$(LOCAL_KERNEL):kernel

# Ramdisk fstab / rc files
PRODUCT_COPY_FILES += \
$(call find-copy-subdir-files,*,$(LOCAL_PATH)/ramdisk/rc,root)

#################################################################################################################################################################

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
	frameworks/native/data/etc/com.broadcom.bt.xml:system/etc/permissions/com.broadcom.bt.xml \
	frameworks/native/data/etc/com.intel.camera.extensions.xml:system/etc/permissions/com.intel.camera.extensions.xml \
	frameworks/native/data/etc/com.intel.internal.telephony.MmgrClient.xml:system/etc/permissions/com.intel.internal.telephony.MmgrClient.xml \
	frameworks/native/data/etc/com.intel.internal.telephony.OemTelephony.xml:system/etc/permissions/com.intel.internal.telephony.OemTelephony.xml \
	frameworks/native/data/etc/com.intel.multidisplay.xml:system/etc/permissions/com.intel.multidisplay.xml \
	frameworks/native/data/etc/com.intel.security.lib.sepdrmjni.xml:system/etc/permissions/com.intel.security.lib.sepdrmjni.xml \
	frameworks/native/data/etc/com.intel.security.service.sepmanager.xml:system/etc/permissions/com.intel.security.service.sepmanager.xml

#################################################################################################################################################################

# Proprietary
PRODUCT_COPY_FILES += \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/bin,system/bin) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc,system/etc) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/atomisp,system/etc/atomisp) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/firmware,system/etc/firmware) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/firmware/modem,system/etc/firmware/modem) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/parameter-framework,system/etc/parameter-framework) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/parameter-framework/Settings/Audio,system/etc/parameter-framework/Settings/Audio) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/parameter-framework/Settings/Vibrator,system/etc/parameter-framework/Settings/Vibrator) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/parameter-framework/Structure/Audio,system/etc/parameter-framework/Structure/Audio) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/parameter-framework/Structure/Vibrator,system/etc/parameter-framework/Structure/Vibrator) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/rril,system/etc/rril) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/telephony,system/etc/telephony) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/widi,system/etc/widi) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/etc/wifi,system/etc/wifi) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/framework,system/framework) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/lib,system/lib) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/vendor/bin,system/vendor/bin) \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/vendor/lib,system/vendor/lib) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor/system/lib/hw,system/lib/hw)


#################################################################################################################################################################
    
# for external SD card
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/blobs/configs/platform.xml:system/etc/permissions/platform.xml

# Houdini
$(call inherit-product-if-exists, vendor/intel/houdini.mk)

PRODUCT_PACKAGES += \
    libhoudini_hook \
    houdini_hook

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/blobs/vold.fstab:system/etc/vold.fstab \
	$(LOCAL_PATH)/blobs/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
	$(LOCAL_PATH)/ramdisk/busybox:root/system/bin/busybox

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/blobs/watchdogd:recovery/root/sbin/watchdogd \
	$(LOCAL_PATH)/blobs/watchdogd:recovery/root/watchdogd \
	$(LOCAL_PATH)/blobs/watchdogd:root/watchdogd \
	$(LOCAL_PATH)/blobs/file_contexts:root/file_contexts \
	$(LOCAL_PATH)/ramdisk/ia_watchdogd:system/bin/ia_watchdogd \
	$(LOCAL_PATH)/ramdisk/init:root/init
	

# Inherit dalvik configuration and the rest of the platform
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
