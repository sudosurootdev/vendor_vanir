#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true ro.goo.rom=vanir-m7spr

# Inherit common vanir files.

# Inherit AOSP device configuration for HTC One.
$(call inherit-product, device/htc/m7spr/full_m7spr.mk)

# Inherit model specific configuration.
$(call inherit-product, vendor/vanir/products/multi_m7-common.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_m7spr
PRODUCT_DEVICE := m7spr
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := One

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=sprint_wwe BUILD_ID=LRX22F BUILD_FINGERPRINT="htc/sprint_wwe/m7wls:5.0.2/LRX22F/461956.2:user/release-keys" PRIVATE_BUILD_DESC="6.16.651.2 CL461956 release-keys"
