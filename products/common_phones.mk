# Vanir common
$(call inherit-product, vendor/vanir/products/common.mk)

# World APN list
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk

# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/vanir/prebuilt/common/etc/sensitive_pn.xml:system/etc/sensitive_pn.xml

PRODUCT_PACKAGES += \
    LatinIME \
    CellBroadcastReceiver \
    messaging

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/dictionaries
