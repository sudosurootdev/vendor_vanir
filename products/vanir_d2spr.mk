#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-d2spr

# Boot Animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Inherit from those products. Most annoying first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

# Inherit common vanir stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

PRODUCT_NAME := vanir_d2spr
