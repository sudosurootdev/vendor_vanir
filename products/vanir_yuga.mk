#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-YUGA

TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit AOSP device configuration for yuga.
$(call inherit-product, device/sony/yuga/device.mk)

#
# Setup device specific product configuration.
#
# Setup device specific product configuration.
PRODUCT_NAME := vanir_yuga
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := yuga
PRODUCT_RELEASE_NAME := Xperia Z
PRODUCT_MODEL := c6606
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6603 BUILD_FINGERPRINT=Sony/C6603/C6603:5.1.1/10.7.A.0.228/58103698:user/release-keys PRIVATE_BUILD_DESC="C6603-user 5.1.1 10.7.A.0.228 58103698 release-keys"
