#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-marlin

# Boot Animation ***May need update***
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 2560

# Inherit aosp_marlin
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)

PRODUCT_NAME := vanir_marlin
PRODUCT_DEVICE := marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
PRODUCT_MANUFACTURER := Google

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=marlin BUILD_FINGERPRINT=google/marlin/marlin:7.1.2/NJH47B/4021576:user/release-keys PRIVATE_BUILD_DESC="marlin-user 7.1.2 NJH47B 4021576 release-keys"
