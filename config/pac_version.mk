# Copyright (C) 2019  The Pac-X project
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

#COMBINED Versioning
COMBINED_VERSION = v9.0

#ifndef COMBINED_BUILD_TYPE
    COMBINED_BUILD_TYPE := ALPHA
#endif

ifeq ($(COMBINED_BUILD_TYPE), OFFICIAL)

# PACOTA
$(call inherit-product-if-exists, vendor/pac/config/ota.mk)

endif

COMBINED_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)
COMBINED_MOD_VERSION := Pac-x-$(COMBINED_VERSION)-$(COMBINED_BUILD_DATE)-$(COMBINED_BUILD_TYPE)


PRODUCT_GENERIC_PROPERTIES += \
  ro.combined.version=$(COMBINED_VERSION) \
  ro.combined.releasetype=$(COMBINED_BUILD_TYPE) \
  ro.modversion=$(COMBINED_MOD_VERSION)

COMBINED_DISPLAY_VERSION := Pac-x-$(COMBINED_VERSION)-$(COMBINED_BUILD_TYPE)

PRODUCT_GENERIC_PROPERTIES += \
  ro.combined.display.version=$(COMBINED_DISPLAY_VERSION)
