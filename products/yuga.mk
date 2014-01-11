# Inherit AOSP device configuration for yuga
$(call inherit-product-if-exists, device/sony/yuga/full_yuga.mk)

# yuga overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/chronos/overlay/yuga

# Setup device specific product configuration.
PRODUCT_NAME := chronos_yuga
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := yuga
PRODUCT_MODEL := C6603
PRODUCT_MANUFACTURER := Sony

# boot animation
PRODUCT_COPY_FILES += \
    vendor/chronos/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip
