PRODUCT_PACKAGES += \
    ThemePicker \

# Extra tools in YAAP
PRODUCT_PACKAGES += \
    7z \
    awk \
    bzip2 \
    curl \
    getcap \
    htop \
    lib7z \
    libsepol \
    nano \
    pigz \
    setcap \
    unrar \
    vim \
    zip

# YAAP packages
PRODUCT_PACKAGES += \
    MatLog \
    OpenDelta \

ifneq ($(TARGET_BUILD_GAPPS),true)
PRODUCT_PACKAGES += \
    Jelly
endif

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    fsck.ntfs \
    mke2fs \
    mkfs.exfat \
    mkfs.ntfs \
    mount.ntfs

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Config
PRODUCT_PACKAGES += \
    SimpleDeviceConfig
