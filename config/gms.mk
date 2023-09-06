#
# Copyright (C) 2020-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_GMS_OVERLAYS_AND_PROPS := false

$(call inherit-product, vendor/2by2/config/gms_packages.mk)
$(call inherit-product, vendor/gms/extras/config.mk)
