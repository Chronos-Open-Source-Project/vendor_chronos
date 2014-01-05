# Specify phone tech before including full_phone
$(call inherit-product, vendor/iokp/configs/gsm.mk)

# Inherit IOKP common_tablet bits
$(call inherit-product, vendor/iokp/configs/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/asus/deb/full_deb.mk)

# deb Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/iokp/overlay/deb

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := iokp_deb
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razorg BUILD_FINGERPRINT=google/razor/deb:4.3/JSS15J/748593:user/release-keys PRIVATE_BUILD_DESC="razorg-user 4.3 JSS15J 748593 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_COPY_FILES += \
    vendor/iokp/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip

