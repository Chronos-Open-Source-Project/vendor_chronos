#Inherit device config from relection
$(call inherit-product-if-exists, device/sony/pollux_windy/iokp.mk)

# pollux_windy overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/iokp/overlay/pollux

# Setup device specific product configuration.
PRODUCT_NAME := iokp_polluxwindy
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := pollux_windy
PRODUCT_MODEL := Xperia Tablet Z WiFi
PRODUCT_MANUFACTURER := Sony

#Bootanimation
PRODUCT_COPY_FILES += \
    vendor/iokp/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip
