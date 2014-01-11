$(call inherit-product, device/samsung/jflteatt/full_jflteatt.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/chronos/configs/gsm.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/chronos/configs/common.mk)
$(call inherit-product, vendor/chronos/configs/common_versions.mk)

# Inherit common jf overlays
DEVICE_PACKAGE_OVERLAYS += vendor/chronos/overlay/jf-common

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteuc TARGET_DEVICE=jflteatt BUILD_FINGERPRINT="samsung/jflteuc/jflteatt:4.2.2/JDQ39/I337UCUAMDL:user/release-keys" PRIVATE_BUILD_DESC="jflteuc-user 4.2.2 JDQ39 I337UCUAMDL release-keys"

PRODUCT_NAME := chronos_jflteatt
PRODUCT_DEVICE := jflteatt

#bootanimation
PRODUCT_COPY_FILES += \
    vendor/chronos/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip

