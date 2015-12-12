## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

## Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
 
## Inherit device configuration
$(call inherit-product, device/lenovo/redhookbay/full_redhookbay.mk)

# Release name
PRODUCT_RELEASE_NAME := K900
PRODUCT_NAME := cm_redhookbay

## Boot animation
TARGET_BOOTANIMATION_NAME := vertical-1080x1920
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
 
## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := redhookbay
