# Copyright (C) 2023 The 2by2 Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Gapps included by default.
ARROW_GAPPS := true
ARROW_BUILD_ZIP_TYPE := GAPPS

2BY2_BUILD_TYPE ?= COMMUNITY

ifeq ($(2BY2_BUILD_TYPE), OFFICIAL)
PRODUCT_PACKAGES += \
    Updater
endif

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.2by2.releasetype=$(2BY2_BUILD_TYPE)

ARROW_VERSION := 2by2-Project-$(ARROW_MOD_VERSION)-$(CURRENT_DEVICE)-$(2BY2_BUILD_TYPE)-$(shell date -u +%Y%m%d)