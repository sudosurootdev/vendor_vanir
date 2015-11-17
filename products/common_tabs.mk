# Vanir common
$(call inherit-product, vendor/vanir/products/common.mk)

PRODUCT_PACKAGES += \
    LatinIME

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7alt.mk
