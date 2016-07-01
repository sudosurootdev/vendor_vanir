#Squisher Choosing
DHO_VENDOR := vanir

# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit device configuration
$(call inherit-product, device/yu/lettuce/full_lettuce.mk)

# Inherit common lettuce files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_lettuce
BOARD_VENDOR := yu
PRODUCT_DEVICE := lettuce

PRODUCT_GMS_CLIENTID_BASE := android-micromax

TARGET_VENDOR_PRODUCT_NAME := YUPHORIA
TARGET_VENDOR_DEVICE_NAME := YUPHORIA

## Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUPHORIA PRODUCT_NAME=YUPHORIA
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=YU/YUPHORIA/YUPHORIA:5.1.1/LMY49J/YOG4PAS8A8:user/release-keys PRIVATE_BUILD_DESC="YUPHORIA-user 5.1.1 LMY49J YOG4PAS8A8 release-keys"

## Use the latest approved GMS identifiers unless running a signed build
