#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Gapps
WITH_GMS ?= true
TARGET_GAPPS_ARCH ?= arm64

ifeq ($(WITH_GMS),true)
  $(call inherit-product, vendor/gapps/$(TARGET_GAPPS_ARCH)/$(TARGET_GAPPS_ARCH)-vendor.mk)
endif
