#
# This policy configuration will be used by all products that
# don't specify a RECOVERY_VARIANT
#

BOARD_SEPOLICY_DIRS += \
    bootable/recovery-twrp/sepolicy \
    vendor/vanir/sepolicy/recovery-twrp
