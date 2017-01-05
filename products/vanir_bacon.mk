#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true ro.goo.rom=vanir-bacon

# Boot Animation
PRODUCT_COPY_FILES += vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit from those products. Most annoying first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/oneplus/bacon/bacon.mk)

# Inherit common bacon files.
$(call inherit-product, vendor/vanir/products/common_phones.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bacon
PRODUCT_NAME := vanir_bacon
PRODUCT_BRAND := oneplus
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := A0001
PRODUCT_GMS_CLIENTID_BASE := android-oneplus
TARGET_CONTINUOUS_SPLASH_ENABLED := true

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=A0001 PRODUCT_NAME=bacon
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=oneplus/bacon/A0001:6.0.1/MHC19Q/ZNH2KAS1KN:user/release-keys PRIVATE_BUILD_DESC="bacon-user 6.0.1 MHC19Q ZNH2KAS1KN release-keys"
