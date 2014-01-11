# Inherit AOSP device configuration for tsubasa
$(call inherit-product-if-exists, device/sony/tsubasa/iokp.mk)

# tsubasa overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/chronos/overlay/tsubasa

# Setup device specific product configuration.
PRODUCT_NAME := chronos_tsubasa
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := tsubasa
PRODUCT_MODEL := LT25i
PRODUCT_MANUFACTURER := Sony

# boot animation
PRODUCT_COPY_FILES += \
	vendor/chronos/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
