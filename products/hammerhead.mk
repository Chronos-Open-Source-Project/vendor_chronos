# Inherit AOSP device configuration for hammerhead
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/chronos/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/chronos/configs/gsm.mk)

# Overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/chronos/overlay/hammerhead

# Setup device specific product configuration
PRODUCT_NAME := chronos_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hammerhead BUILD_FINGERPRINT="google/hammerhead/hammerhead:4.4/KRT16M/893803:user/release-keys" PRIVATE_BUILD_DESC="hammerhead-user 4.4 KRT16M 893803 release-keys"

PRODUCT_COPY_FILES += \
    vendor/chronos/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip
