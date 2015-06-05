# Vanir common
$(call inherit-product, vendor/vanir/products/common.mk)

PRODUCT_PACKAGES += \
    LatinIME

PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/dictionaries

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7alt.mk
