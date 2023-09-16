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
    vendor/2by2/config/permissions/privapp-permissions-lineage.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-lineage.xml

# For Google Photos
PRODUCT_COPY_FILES += \
    vendor/2by2/config/permissions/com.google.android.apps.photos.NEXUS_PRELOAD.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/com.google.android.apps.photos.NEXUS_PRELOAD.xml

# 2byTricks
PRODUCT_PACKAGES += \
    2byTricks

# Additional packages flags
FORCE_AOSP_DIALER ?= true
FORCE_AOSP_CONTACTS ?= true
FORCE_AOSP_DESKCLOCK ?= true

# Dialer
ifeq ($(FORCE_AOSP_DIALER),true)
PRODUCT_PACKAGES += Dialer
else
PRODUCT_PACKAGES += GoogleDialer
endif

# Contacts
ifeq ($(FORCE_AOSP_CONTACTS),true)
PRODUCT_PACKAGES += SHContacts
endif

# DeskClock
ifeq ($(FORCE_AOSP_DESKCLOCK),true)
PRODUCT_PACKAGES += SHDeskClock
endif

# Camera
ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

# Use Matlog for userdebug and eng builds
ifneq (,$(filter userdebug eng,$(TARGET_BUILD_VARIANT)))
PRODUCT_PACKAGES += MatLog
endif
