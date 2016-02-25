#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-h901

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/lge/h901/full_h901.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_h901


PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="pplus" PRODUCT_NAME="pplus_tmo_us" BUILD_FINGERPRINT="lge/pplus_tmo_us/pplus:5.1.1/LMY47V/152801355bef0:user/release-keys" PRIVATE_BUILD_DESC="pplus_tmo_us-user 5.1.1 LMY47V 152801355bef0 release-keys"
