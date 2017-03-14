# VanirAOSP (to the power of Frey, to the hammer of Thor)
PRODUCT_PROPERTY_OVERRIDES += ro.goo.rom=vanir-tomato

# Boot Animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1080

# Veggies
$(call inherit-product, device/yu/tomato/full_tomato.mk)

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8939

PRODUCT_NAME := vanir_tomato
BOARD_VENDOR := yu
PRODUCT_DEVICE := tomato

PRODUCT_GMS_CLIENTID_BASE := android-micromax

TARGET_VENDOR_PRODUCT_NAME := YUREKA
TARGET_VENDOR_DEVICE_NAME := YUREKA
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUREKA PRODUCT_NAME=YUREKA

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=YU/YUREKA/YUREKA:5.1.1/LMY49J/YOG4PAS8A4:user/release-keys PRIVATE_BUILD_DESC="YUREKA-user 5.1.1 LMY49J YOG4PAS8A4 release-keys"
