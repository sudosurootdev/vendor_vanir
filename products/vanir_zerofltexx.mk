PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1440x2560.zip:system/media/bootanimation.zip

$(call inherit-product, device/samsung/zerofltexx/full_zerofltexx.mk)

$(call inherit-product, vendor/vanir/products/common_phones.mk)

$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="Galaxy S6" \
    TARGET_DEVICE="Galaxy S6"

PRODUCT_NAME := vanir_zerofltexx
PRODUCT_DEVICE := zerofltexx
