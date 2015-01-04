LOCAL_PATH := device/lenovo/redhookbay

# Board configuration
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := clovertrail
TARGET_BOOTLOADER_BOARD_NAME := clovertrail
TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86-atom
TARGET_CPU_ABI := x86
TARGET_CPU_VARIANT := x86
TARGET_ARCH_VARIANT_FPU := sse
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_CPU_SMP := true
TARGET_PRELINK_MODULE := false
INTEL_INGREDIENTS_VERSIONS := true

# Use boot tools to make Intel-formatted images
DEVICE_BASE_BOOT_IMAGE := $(LOCAL_PATH)/blobs/boot.img
DEVICE_BASE_RECOVERY_IMAGE := $(LOCAL_PATH)/blobs/recovery.img

BOARD_HAS_NO_FB2PNG := true
TARGET_GLOBAL_CFLAGS += -DUSE_SSSE3 -DUSE_SSE2

# Enabling Houdini [ARM native code runs on Intel x86 using an this emulation feature]
INTEL_HOUDINI := true
ifdef ($(INTEL_HOUDINI))
ADDITIONAL_BUILD_PROPERTIES += ro.product.cpu.abi2=armeabi-v7a
ADDITIONAL_BUILD_PROPERTIES += ro.product.cpu.upgradeabi=armeabi-v7a
ADDITIONAL_BUILD_PROPERTIES += dalvik.vm.houdini=on
endif

#HW_Rendering
BOARD_USES_HWCOMPOSER := true
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/blobs/egl.cfg
BOARD_USE_LIBVA_INTEL_DRIVER := true
BOARD_USE_LIBVA := true
BOARD_USE_LIBMIX := true
BOARD_USES_WRS_OMXIL_CORE := true

# Recovery config global
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
DEVICE_RESOLUTION := 1080x1920
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/etc/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/etc/recovery.init.rc
RECOVERY_SDCARD_ON_DATA := true

# TWRP recovery config
TW_INCLUDE_INJECTTWRP := false
TWRP_EVENT_LOGGING := false
TW_INTERNAL_STORAGE_PATH := "/usbotg"
TW_INTERNAL_STORAGE_MOUNT_POINT := "usbotg"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TWHAVE_SELINUX := false
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := /sys/class/backlight/psb-bl/brightness

# This is deprecated and will be dropped
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/blobs/kernel

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

## NEW ##

# Wifi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP    := "/system/etc/firmware/fw_bcmdhd_43362_apsta.bin"
WIFI_DRIVER_FW_PATH_STA   := "/system/etc/firmware/fw_bcmdhd_43362.bin"
WIFI_DRIVER_MODULE_ARG := "iface_name=wlan0 firmware_path=/system/etc/firmware/fw_bcmdhd_43362.bin"

# Audio
BOARD_USES_ALSA_AUDIO := true

# SELinux
HAVE_SELINUX := true
BOARD_SEPOLICY_DIRS += device/lenovo/redhookbay/sepolicy
BOARD_SEPOLICY_UNION += \
    file_contexts \
    seapp_contexts \
    property_contexts \
    file.te \
    genfs_contexts \
    device.te \
    vold.te \
    ecryptfs.te \
    surfaceflinger.te \
    zygote.te \
    su.te \
    pvrsrvctl.te \
    bluetooth.te \
    mediaserver.te
