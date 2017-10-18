# THIS FILE IS A VESTIGE OF A PREVIOUS NFC WORKAROUND
# IT IS FUNCTIONALLY EQUIVALENT TO INHERETING common_$(NEXUS_CATEGORY).mk DIRECTLY

ifeq ($(NEXUS_CATEGORY),)
$(error Nexus devices must set NEXUS_CATEGORY in their makefile before including common_nexus.mk - it is used to include either common_phones or common_tabs)
endif

$(call inherit-product, vendor/vanir/products/common_$(NEXUS_CATEGORY).mk)
