#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-pme

# Boot Animation
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 2560

# Inherit device configuration
$(call inherit-product, device/htc/pme/full_pme.mk)

# Inherit vanir phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_pme
PRODUCT_DEVICE := pme
PRODUCT_BRAND := HTC
PRODUCT_MODEL := HTC 10
PRODUCT_MANUFACTURER := HTC
PRODUCT_RELEASE_NAME := pme