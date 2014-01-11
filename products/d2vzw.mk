# Inherit AOSP device configuration for d2vzw.
$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/chronos/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/chronos/configs/common.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/chronos/configs/vzw.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/chronos/overlay/d2-common

# Setup device specific product configuration.
PRODUCT_NAME := chronos_d2vzw
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2vzw
PRODUCT_MODEL := SCH-I535
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="Verizon/d2vzw/d2vzw:4.1.2/JZO54K/I535VRBMB1:user/release-keys" PRIVATE_BUILD_DESC="d2vzw-user 4.1.2 JZO54K I535VRBMB1 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon

# boot animation
PRODUCT_COPY_FILES += \
vendor/chronos/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
