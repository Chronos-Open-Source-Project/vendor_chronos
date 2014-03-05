$(call inherit-product, device/samsung/jflte/full_jflte.mk)

# jfltexx overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/chronos/overlay/samsung/jf-common

# Specify phone tech before including full_phone
$(call inherit-product, vendor/chronos/configs/gsm.mk)
$(call inherit-product, vendor/chronos/configs/common.mk)


PRODUCT_COPY_FILES += \
    vendor/chronos/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip

PRODUCT_DEVICE := jflte
PRODUCT_NAME := chronos_jflte
