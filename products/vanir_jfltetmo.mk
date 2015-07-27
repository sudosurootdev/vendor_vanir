#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-jfltetmo

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/1080x1920.zip:system/media/bootanimation.zip

# Inherit device repo
$(call inherit-product, device/samsung/jfltetmo/full_jfltetmo.mk)

# MPDecision and thermal(d/-engine) auto-disablers for KT-based kernels (like ours)
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/jf/etc/boot.d/69nuclearwinter:system/etc/boot.d/69nuclearwinter \
    vendor/vanir/proprietary/jf/bin/nuclearwinter:system/bin/nuclearwinter \
    vendor/vanir/proprietary/jf/bin/nuclearwinterinternal:system/bin/nuclearwinterinternal

# Inherit common product files.
NO_DRM_BLOBS := true
$(call inherit-product, vendor/vanir/products/common_phones.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=jfltetmo \
  TARGET_DEVICE=jfltetmo \
  BUILD_FINGERPRINT="samsung/jfltetmo/jfltetmo:4.4.4/KTU84P/M919UVUFNK2:user/release-keys" \
  PRIVATE_BUILD_DESC="jfltetmo-user 4.4.4 KTU84P M919UVUFNK2 release-keys"

#Tagging
PRODUCT_NAME := vanir_jfltetmo
