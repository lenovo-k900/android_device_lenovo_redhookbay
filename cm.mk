## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

## Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
 
## Inherit device configuration
$(call inherit-product, device/lenovo/redhookbay/redhookbay.mk)

PRODUCT_NAME := cm_redhookbay

## Release name
PRODUCT_RELEASE_NAME := K900
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Boot animation
TARGET_BOOTANIMATION_NAME := vertical-1080x1920
 
## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := redhookbay
