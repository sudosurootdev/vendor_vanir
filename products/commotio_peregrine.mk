#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-peregrine

# Boot Animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Inherit from those products. Most annoying first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/peregrine/full_peregrine.mk)

# Inherit vanir phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Device Config
PRODUCT_NAME := vanir_peregrine
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := peregrine
PRODUCT_MODEL := peregrine
PRODUCT_MANUFACTURER := motorola
PRODUCT_RELEASE_NAME := peregrine

PRODUCT_GMS_CLIENTID_BASE := android-motorola
