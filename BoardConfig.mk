include $(GENERIC_X86_CONFIG_MK)
LOCAL_PATH := device/lenovo/redhookbay

#Board configuration
TARGET_BOARD_PLATFORM := clovertrail
TARGET_BOOTLOADER_BOARD_NAME := clovertrail
TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86
TARGET_CPU_ABI := x86
TARGET_CPU_VARIANT := x86
TARGET_ARCH_VARIANT_FPU := sse
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_CPU_SMP := true
TARGET_PRELINK_MODULE := false
INTEL_INGREDIENTS_VERSIONS := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
LOCAL_CFLAGS += -DARCH_IA32

#Atom optimizations to improve memory benchmarks.
-include $(LOCAL_PATH)/OptAtom.mk

#Make settings
TARGET_NO_RECOVERY := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

#Skip doc from building
BOARD_SKIP_ANDROID_DOC_BUILD := true
BUILD_WITH_FULL_STAGEFRIGHT := true

BOARD_HAS_NO_FB2PNG := true
TARGET_GLOBAL_CFLAGS += -DUSE_SSSE3 -DUSE_SSE2

#HW_Rendering
BOARD_USES_HWCOMPOSER := true
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/proprietary/lib/egl/egl.cfg
BOARD_USE_LIBVA_INTEL_DRIVER := true
BOARD_USE_LIBVA := true
BOARD_USE_LIBMIX := true
BOARD_USES_WRS_OMXIL_CORE := true
BOARD_ALLOW_EGL_HIBERNATION := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH
USE_INTEL_MDP := true
TARGET_NO_METADATA_ON_AVC_ENC := true
INTEL_VA := true
ENABLE_IMG_GRAPHICS := true
BOARD_USES_MRST_OMX := true
USE_INTEL_SECURE_AVC := true

#File system
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1342177280
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

#Enable WEBGL in WebKit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

#SELinux
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

#Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_TINY_ALSA_AUDIO := true

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF :=  $(LOCAL_PATH)/blobs/bt_vendor.conf

#GPS
BOARD_HAVE_GPS := true

#Select libcamera2 as the camera HAL
USE_CAMERA_HAL2 := true
