#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-MASERATI

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/540x960.zip:system/media/bootanimation.zip

# Inherit AOSP device configuration for maserati.
$(call inherit-product, device/motorola/maserati/full_maserati.mk)

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)

#
# Setup device specific product configuration.
#
# Setup device specific product configuration.
PRODUCT_NAME := vanir_maserati
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := maserati
PRODUCT_RELEASE_NAME := Droid4
PRODUCT_MODEL := XT894
PRODUCT_MANUFACTURER := Motorola


