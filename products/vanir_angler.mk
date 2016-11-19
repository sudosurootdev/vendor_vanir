# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

# Inherit common phone stuff
NEXUS_CATEGORY := phones
$(call inherit-product, vendor/vanir/products/common_nexus.mk)

# Enhanced NFC
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/angler/overlay-cm

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_angler
PRODUCT_BRAND := Android
PRODUCT_MODEL := Nexus 6P

TARGET_VENDOR := huawei

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=angler BUILD_FINGERPRINT=google/angler/angler:7.0/NBD91K/3318877:user/release-keys PRIVATE_BUILD_DESC="angler-user 7.0 NBD91K 3318877 release-keys"
