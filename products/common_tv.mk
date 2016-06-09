# Inherit common CM stuff
$(call inherit-product, vendor/vanir/products/common.mk)

PRODUCT_SIZE := mini

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7alt.mk
