#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-n3

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Inherit from those products. Most annoying first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/oppo/n3/n3.mk)

# Inherit common oneplus2 files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_n3
PRODUCT_DEVICE := n3
PRODUCT_BRAND := OPPO
PRODUCT_MANUFACTURER := OPPO
PRODUCT_MODEL := N3

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=OPPO/N5206/N3:4.4.4/KTU84P/1415366188:user/release-keys PRIVATE_BUILD_DESC="msm8974-user 4.4.4 KTU84P eng.root.20150907.162651 dev-keys" TARGET_DEVICE="N3"
