# when this builds, it will probably mess your phone up.
# you might want to wait to try this unless you have a giant pair of low-hanging huevos

PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-nicki

# Device
$(call inherit-product, device/sony/nicki/device.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x854.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Needed for bootlogo
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Branding
PRODUCT_DEVICE := nicki
PRODUCT_NAME := vanir_nicki
PRODUCT_BRAND := Sony
PRODUCT_MODEL := nicki
PRODUCT_MANUFACTURER := Sony
PRODUCT_CHARACTERISTICS := phone

# Release name
PRODUCT_RELEASE_NAME := Xperiam
