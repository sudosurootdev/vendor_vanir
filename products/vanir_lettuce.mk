# Squisher Choosing
DHO_VENDOR := vanir

# Boot
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit repos
$(call inherit-product, device/yu/lettuce/full_lettuce.mk)
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Release name
PRODUCT_NAME := vanir_lettuce
BOARD_VENDOR := yu
PRODUCT_DEVICE := lettuce
PRODUCT_RELEASE_NAME := lettuce
PRODUCT_GMS_CLIENTID_BASE := android-micromax

TARGET_VENDOR_PRODUCT_NAME := YUPHORIA
TARGET_VENDOR_DEVICE_NAME := YUPHORIA
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUPHORIA PRODUCT_NAME=YUPHORIA
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=YU/YUPHORIA/YUPHORIA:5.1.1/LMY48B/YOG4PAS47N:user/release-keys PRIVATE_BUILD_DESC="YUPHORIA-user 5.1.1 LMY48B YOG4PAS47N release-keys"
