#Squisher Choosing
DHO_VENDOR := vanir

# needed for boot logo
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-pollux_windy

# Tablet Overlays with radios
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Inherit AOSP device configuration for Tablet Z Wifi
$(call inherit-product, device/sony/pollux_windy/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_pollux_windy
PRODUCT_DEVICE := pollux_windy
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := SGP311

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGP311 BUILD_FINGERPRINT=Sony/SGP311/SGP311:5.1.1/10.7.A.0.222/900225891:user/release-keys PRIVATE_BUILD_DESC="SGP311-user 5.1.1 10.7.A.0.222 900225891 test-keys"
