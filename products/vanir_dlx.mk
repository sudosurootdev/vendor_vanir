#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-dlx

# Inherit device configuration
$(call inherit-product, device/htc/dlx/full_dlx.mk)
$(call inherit-product, vendor/vanir/products/multi_m7-common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dlx
PRODUCT_NAME := vanir_dlx
PRODUCT_BRAND := Verizon
PRODUCT_MODEL := HTC6435LVW
PRODUCT_MANUFACTURER := HTC

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/vanir/products/vzw.mk)

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=dlx BUILD_FINGERPRINT=htc/verizon_wwe/dlx:4.4.2/KOT49H/322791.5:user/release-keys PRIVATE_BUILD_DESC="4.09.605.5 CL322791 release-keys"
