# Inherit device configuration
$(call inherit-product, device/lge/p930/full_p930.mk)

# Release name
PRODUCT_RELEASE_NAME := NitroHD

# Inherit GSM common stuff
$(call inherit-product, vendor/chronos/configs/gsm.mk)

# Inherit common product files.
$(call inherit-product, vendor/chronos/configs/common.mk)

DEVICE_PACKAGE_OVERLAYS += vendor/chronos/overlay/iprj-common

# boot animation
PRODUCT_COPY_FILES += \
    vendor/chronos/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p930
PRODUCT_NAME := iokp_p930
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P930
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
# PRODUCT_BUILD_PROP_OVERRIDES ...
