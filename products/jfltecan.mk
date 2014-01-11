$(call inherit-product, device/samsung/jfltecan/full_jfltecan.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/chronos/configs/gsm.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/chronos/configs/common.mk)
$(call inherit-product, vendor/chronos/configs/common_versions.mk)

# Inherit common jf overlays
DEVICE_PACKAGE_OVERLAYS += vendor/chronos/overlay/jf-common

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltecan TARGET_DEVICE=jfltecan BUILD_FINGERPRINT="samsung/jfltecan/jfltecan:4.2.2/JDQ39/M919UVUAMDB:user/release-keys" PRIVATE_BUILD_DESC="jfltetmo-user 4.2.2 JDQ39 M919UVUAMDB release-keys"

PRODUCT_NAME := chronos_jfltecan
PRODUCT_DEVICE := jfltecan

#bootanimation
PRODUCT_COPY_FILES += \
    vendor/chronos/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip
