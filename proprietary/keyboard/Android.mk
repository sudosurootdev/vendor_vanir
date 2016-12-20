LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_ARCH),arm64)
$(shell mkdir -p $(PRODUCT_OUT)/system/lib64/)
$(shell cp -f vendor/vanir/proprietary/common/lib64/libjni_latinimegoogle.so $(PRODUCT_OUT)/system/lib64/libjni_latinime.so)
endif

include $(CLEAR_VARS)

LOCAL_MODULE := Latinimegoogle
LOCAL_MODULE_OWNER := google
LOCAL_MODULE_TAGS := optional

# Sort by ARMs
ifeq ($(TARGET_ARCH),arm64)

LOCAL_POST_INSTALL_CMD := \
    ln -sf /system/lib/libjni_latinime.so $(PRODUCT_OUT)/system/lib/libjni_latinimegoogle.so; \
    ln -sf /system/lib64/libjni_latinime.so $(PRODUCT_OUT)/system/lib64/libjni_latinimegoogle.so

else

LOCAL_POST_INSTALL_CMD := ln -sf /system/lib/libjni_latinime.so $(PRODUCT_OUT)/system/lib/libjni_latinimegoogle.so

endif

include $(BUILD_PHONY_PACKAGE)
