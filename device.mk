LOCAL_PATH := device/lenovo/redhookbay

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlays

#During Development we will turn off all security etc.
ADDITIONAL_DEFAULT_PROPERTIES := \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debugabble=1 

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/blobs/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

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

# Proprietary
PRODUCT_COPY_FILES += \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/bin,system/bin) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc,system/etc) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc/atomisp,system/etc/atomisp) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc/bluetooth,system/etc/bluetooth) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc/firmware,system/etc/firmware) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc/firmware/modem,system/etc/firmware/modem) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc/parameter-framework,system/etc/parameter-framework) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc/parameter-framework/Settings/Audio,system/etc/parameter-framework/Settings/Audio) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc/parameter-framework/Settings/Vibrator,system/etc/parameter-framework/Settings/Vibrator) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc/parameter-framework/Structure/Audio,system/etc/parameter-framework/Structure/Audio) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc/parameter-framework/Structure/Vibrator,system/etc/parameter-framework/Structure/Vibrator) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc/rril,system/etc/rril) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc/telephony,system/etc/telephony) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc/widi,system/etc/widi) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/etc/wifi,system/etc/wifi) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/framework,system/framework) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/lib,system/lib) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/lib/hw,system/lib/hw) \
		$(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/lib/egl,system/lib/egl) \
		$(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/lib/parameter-framework-plugins,system/lib/parameter-framework-plugins) \
		$(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/lib/parameter-framework-plugins/Audio,system/lib/parameter-framework-plugins/Audio) \
		$(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/lib/parameter-framework-plugins/Fs,system/lib/parameter-framework-plugins/Fs) \
		$(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/lib/parameter-framework-plugins/System,system/lib/parameter-framework-plugins/System) \
		$(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/media,system/media) \
		$(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/usr/idc,system/usr/idc) \
		$(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/usr/keylayout,system/usr/keylayout) \
		$(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/usr/share/alsa,system/usr/share/alsa) \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/vendor,system/vendor) \
		$(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/vendor/bin,system/vendor/bin) \
		$(call find-copy-subdir-files,*,$(LOCAL_PATH)/proprietary/vendor/lib,system/vendor/lib)
    
# for external SD card
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/blobs/configs/platform.xml:system/etc/permissions/platform.xml

# Enable it if you have glitches on 2D rendering
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bq.gpu_to_cpu_unsupported=1
	
# Enable location
PRODUCT_PACKAGES := NetworkLocation

# SGX540 is slower with the scissor optimization enabled
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.disable_scissor_opt=true
	
# Don't preload EGL drivers in Zygote at boot time
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zygote.disable_gl_preload=true

# Houdini
PRODUCT_COPY_FILES += \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/houdini/system,system)

PRODUCT_PACKAGES += \
   libhoudini_hook \
   houdini_hook

# Inherit dalvik configuration and the rest of the platform
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
