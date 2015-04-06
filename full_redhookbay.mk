# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, device/lenovo/redhookbay/device.mk)

PRODUCT_NAME := full_redhookbay
PRODUCT_DEVICE := redhookbay
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_BRAND := K900