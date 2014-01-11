# Inherit AOKP device configuration for mint
$(call inherit-product-if-exists, device/sony/mint/iokp.mk)

# mint overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/chronos/overlay/mint

# Setup device specific product configuration.
PRODUCT_NAME := chronos_mint
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := mint
PRODUCT_MODEL := Xperia T
PRODUCT_MANUFACTURER := Sony

# boot animation
PRODUCT_COPY_FILES += \
	vendor/chronos/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
