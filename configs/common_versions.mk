# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell vendor/chronos/tools/getdate)
CHRONOS_BRANCH=kitkat

ifneq ($(CHRONOS_BUILD),)
    # CHRONOS_BUILD=<goo version int>/<build string>
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.developerid=chronos \
        ro.goo.rom=chronos \
        ro.goo.version=$(shell echo $(CHRONOS_BUILD) | cut -d/ -f1) \
        ro.chronos.version=$(TARGET_PRODUCT)_$(CHRONOS_BRANCH)_$(shell echo $(CHRONOS_BUILD) | cut -d/ -f2)
else
    ifneq ($(CHRONOS_NIGHTLY),)
        # CHRONOS_NIGHTLY=true
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.chronos.version=$(TARGET_PRODUCT)_nightly_$(DATE)
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.chronos.version=$(TARGET_PRODUCT)_unofficial_$(DATE)
    endif
endif

# needed for statistics
PRODUCT_PROPERTY_OVERRIDES += \
        ro.chronos.branch=$(CHRONOS_BRANCH) \
        ro.chronos.device=$(CHRONOS_PRODUCT)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1
