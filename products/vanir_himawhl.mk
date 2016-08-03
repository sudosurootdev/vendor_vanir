#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-himawhl

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/htc/himawhl/full_himawhl.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_himawhl

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="htc_himawhlspr" \
    PRODUCT_NAME="himawhlspr_na_gen_unlock" \
    BUILD_FINGERPRINT="htc/HTCOneM9spr/htc_himawhl:5.0.2/LRX22G/511781.15:user/release-keys" \
PRIVATE_BUILD_DESC="1.33.605.15 CL511781 release-keys"