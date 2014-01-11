# Inherit common stuff
$(call inherit-product, vendor/chronos/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/chronos/overlay/common_tablet

