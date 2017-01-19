#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip 

# Inherit from those products. Most annoying first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/falcon/full_falcon.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# device name
PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := vanir_falcon
PRODUCT_DEVICE := falcon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := MOTO G
PRODUCT_MANUFACTURER := MOTOROLA

PRODUCT_GMS_CLIENTID_BASE := android-motorola