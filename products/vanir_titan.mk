#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-titan

#The device
$(call inherit-product, device/motorola/titan/full_titan.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_titan
PRODUCT_RELEASE_NAME := titan

PRODUCT_GMS_CLIENTID_BASE := android-motorola
