PRODUCT_PACKAGES += \
    ThemePicker \

# Extra tools in YAAP
PRODUCT_PACKAGES += \
    curl \
    getcap \
    htop \
    libsepol \
    setcap

# YAAP packages
PRODUCT_PACKAGES += \
    MatLog \
    OpenDelta \

TARGET_BUILD_LAWNCHAIR ?= true
ifeq ($(strip $(TARGET_BUILD_LAWNCHAIR)),true)
include vendor/lawnchair/lawnchair.mk
# Lawnicons
$(call inherit-product-if-exists, vendor/lawnicons/overlay.mk)
endif

ifneq ($(TARGET_BUILD_GAPPS),true)
PRODUCT_PACKAGES += \
    Etar \
    Jelly \
    LatinIME \
    messaging
endif

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Config
PRODUCT_PACKAGES += \
    SimpleDeviceConfig
