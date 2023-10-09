#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Required permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/com.android.launcher3.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.android.launcher3.xml \
    frameworks/base/data/etc/com.android.dialer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.android.dialer.xml \
    frameworks/base/data/etc/com.android.contacts.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.android.contacts.xml \
    vendor/2by2/prebuilts/permissions/privapp-permissions-lineage.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-lineage.xml

# For Google Photos
PRODUCT_COPY_FILES += \
    vendor/2by2/prebuilts/sysconfig/com.google.android.apps.photos.NEXUS_PRELOAD.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/com.google.android.apps.photos.NEXUS_PRELOAD.xml

# 2byTricks
PRODUCT_PACKAGES += \
    2byTricks

# Additional packages flags
FORCE_AOSP_DIALER ?= false

# Dialer
ifeq ($(FORCE_AOSP_DIALER),true)
PRODUCT_PACKAGES += \
    Dialer \
    DefaultDialerOverlay
else
PRODUCT_PACKAGES += GoogleDialer
endif

# Use Matlog for userdebug and eng builds
ifneq (,$(filter userdebug eng,$(TARGET_BUILD_VARIANT)))
PRODUCT_PACKAGES += MatLog
endif

# Quick Tap
ifeq ($(TARGET_SUPPORTS_QUICK_TAP),true)
PRODUCT_COPY_FILES += \
    vendor/2by2/prebuilts/sysconfig/quick_tap.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/quick_tap.xml
endif