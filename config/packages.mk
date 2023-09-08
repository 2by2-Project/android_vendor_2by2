#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Common packages
PRODUCT_PACKAGES += \
    Launcher3 \
    Dialer \
    Contacts \
    DeskClock \
    Gallery2

# Required permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/com.android.launcher3.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.android.launcher3.xml \
    frameworks/base/data/etc/com.android.dialer.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.android.dialer.xml \
    frameworks/base/data/etc/com.android.contacts.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.android.contacts.xml \
    vendor/2by2/config/permissions/privapp-permissions-lineage.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-lineage.xml

# GMS
$(call inherit-product, vendor/2by2/config/gms.mk)
$(call inherit-product, vendor/2by2/config/gms_extras.mk)

# Additional packages flags
FORCE_AOSP_DIALER ?= true
FORCE_AOSP_CONTACTS ?= true
FORCE_AOSP_DESKCLOCK ?= true

# Google Dialer
ifneq ($(FORCE_AOSP_DIALER),true)
PRODUCT_PACKAGES += GoogleDialer
endif

# Google Contacts
ifneq ($(FORCE_AOSP_CONTACTS),true)
PRODUCT_PACKAGES += GoogleContacts
endif

# Google DeskClock
ifneq ($(FORCE_AOSP_DESKCLOCK),true)
PRODUCT_PACKAGES += PrebuiltDeskClockGoogle
endif

# Use Matlog for userdebug and eng builds
ifneq (,$(filter userdebug eng,$(TARGET_BUILD_VARIANT)))
PRODUCT_PACKAGES += MatLog
endif
