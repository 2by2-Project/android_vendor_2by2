#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Gapps
WITH_GMS ?= true

# GMS Flags
TARGET_SUPPORTS_QUICK_TAP ?= false
TARGET_USES_PIXEL_LAUNCHER ?= false
FORCE_AOSP_DIALER ?= true
FORCE_AOSP_CONTACTS ?= true

ifeq ($(WITH_GMS),true)
  $(call inherit-product, vendor/gms/gms_full.mk)
endif

ifeq ($(TARGET_USES_PIXEL_LAUNCHER), true)
PRODUCT_PACKAGES += NexusLauncherRelease
endif

ifneq ($(FORCE_AOSP_DIALER), true)
PRODUCT_PACKAGES += GoogleDialer
endif

ifneq ($(FORCE_AOSP_CONTACTS), true)
PRODUCT_PACKAGES += GoogleContacts
endif
