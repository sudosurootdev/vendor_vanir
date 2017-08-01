#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-victara

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit common product files.
NO_DRM_BLOBS := true

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/motorola/victara/overlay

# Inherit common vanir stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Make the device
$(call inherit-product, device/motorola/victara/full_victara.mk)

PRODUCT_DEVICE := victara
PRODUCT_NAME := vanir_victara
PRODUCT_RELEASE_NAME := MOTO X (2014)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=victara_tmo \
    BUILD_FINGERPRINT=motorola/victara_tmo/victara:6.0/LXE22.46-11/10:user/release-keys \
    PRIVATE_BUILD_DESC="victara_tmo-user 6.0 LXE22.46-11 10 release-keys"
