# Boot Animation

LOCAL_PATH := vendor/2by2/prebuilts/bootanimation

SUPPORTED_RES := $(strip $(notdir $(shell ls $(LOCAL_PATH)/*.zip)))

ifeq ($(filter $(SUPPORTED_RES),$(TARGET_BOOT_ANIMATION_RES).zip),)
$(warning "Hmm. looks like your TARGET_BOOT_ANIMATION_RES is not defined, or not supported. Assuming default 1080p!")
TARGET_BOOT_ANIMATION_RES := 1080
endif

PRODUCT_COPY_FILES += $(LOCAL_PATH)/$(TARGET_BOOT_ANIMATION_RES).zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip