#
# Copyright (C) 2024 HorizonDroid
#
# SPDX-License-Identifier: Apache-2.0
#

HORIZON_DATE_YEAR := $(shell date -u +%Y)
HORIZON_DATE_MONTH := $(shell date -u +%m)
HORIZON_DATE_DAY := $(shell date -u +%d)
HORIZON_DATE_HOUR := $(shell date -u +%H)
HORIZON_DATE_MINUTE := $(shell date -u +%M)
HORIZON_BUILD_DATE_UTC := $(shell date -d '$(HORIZON_DATE_YEAR)-$(HORIZON_DATE_MONTH)-$(HORIZON_DATE_DAY) $(HORIZON_DATE_HOUR):$(HORIZON_DATE_MINUTE) UTC' +%s)
HORIZON_BUILD_DATE := $(HORIZON_DATE_YEAR)$(HORIZON_DATE_MONTH)$(HORIZON_DATE_DAY)-$(HORIZON_DATE_HOUR)$(HORIZON_DATE_MINUTE)

HORIZON_PLATFORM_VERSION := 14.0
HORIZON_CODENAME := Vega
HORIZON_BUILD_VERSION := v2.1
HORIZON_BUILD_TYPE ?= UNOFFICIAL

HORIZON_VERSION := HorizonDroid-$(CUSTOM_BUILD)-$(HORIZON_PLATFORM_VERSION)-$(HORIZON_BUILD_DATE)-$(HORIZON_BUILD_TYPE)

PRODUCT_SYSTEM_EXT_PROPERTIES += \
    ro.horizon.codename=$(HORIZON_CODENAME) \
    ro.horizon.build.date=$(BUILD_DATE) \
    ro.horizon.build_type=$(HORIZON_BUILD_TYPE) \
    ro.horizon.build_version=$(HORIZON_BUILD_VERSION) \
    ro.horizon.device=$(CUSTOM_BUILD) \
    ro.horizon.version=$(HORIZON_VERSION) \
    ro.horizon.maintainer=$(HORIZON_MAINTAINER)
