#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-kenzo

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit aosp_kenzo
$(call inherit-product, device/xiaomi/kenzo/full_kenzo.mk)

# Inherit common stuff.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_kenzo
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := kenzo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 3
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Xiaomi/kenzo/kenzo:6.0.1/MMB29M/6.11.24:user/release-keys \
    PRIVATE_BUILD_DESC="kenzo-user 6.0.1 MMB29M 6.11.24 release-keys"
endif