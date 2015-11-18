#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-ls980

# Inherit device configuration
$(call inherit-product, device/lge/ls980/ls980.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/multi_g2-common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ls980
PRODUCT_NAME := vanir_ls980
PRODUCT_BRAND := lge
PRODUCT_MODEL := LS980 4G
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_spr_us/g2:4.4.2/KOT49I.LS980ZVC/LS980ZVC.1394331950:user/release-keys PRIVATE_BUILD_DESC="g2_spr_us-user 4.4.2 KOT49I.LS980ZVC LS980ZVC.1394331950 release-keys"
