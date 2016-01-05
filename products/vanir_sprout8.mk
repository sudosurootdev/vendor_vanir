$(call inherit-product, device/google/sprout8/sprout8.mk)

# Common vanir stuff
$(call inherit-product, vendor/vanir/products/common_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=5.1/LMY47O/1783956:user/release-keys PRIVATE_BUILD_DESC="sprout-user 5.1 LMY47O 1783956 release-keys"

PRODUCT_NAME := vanir_sprout8
PRODUCT_DEVICE :=sprout8
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := A1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="sprout8"

DHO_VENDOR := vanir
# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x854.zip:system/media/bootanimation.zip

