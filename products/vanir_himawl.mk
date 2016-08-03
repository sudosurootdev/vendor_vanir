#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-himawl

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/htc/himawl/full_himawl.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

PRODUCT_GMS_CLIENTID_BASE := android-verizon

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_himawl

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="htc_himawl" \
    PRODUCT_NAME="HTCOneM9vzw" \
    BUILD_FINGERPRINT="htc/HTCOneM9vzw/htc_himawl:6.0/MRA58K/669662.7:user/release-keys" \
PRIVATE_BUILD_DESC="3.37.605.7 CL669662 release-keys"