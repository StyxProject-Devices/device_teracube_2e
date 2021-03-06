#
# Copyright (C) 2021 Teracube Inc.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from 2e device
$(call inherit-product, device/teracube/2e/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

TARGET_DISABLE_BLUR := true
TARGET_GAPPS_ARCH := arm64
# Inherit some common Styx stuff
$(call inherit-product, vendor/styx/config/common.mk)

PRODUCT_DEVICE := 2e
PRODUCT_MANUFACTURER := Teracube
PRODUCT_NAME := styx_2e
PRODUCT_MODEL := Teracube 2e

PRODUCT_GMS_CLIENTID_BASE := android-teracube
TARGET_VENDOR := teracube
TARGET_VENDOR_PRODUCT_NAME := 2e
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_yk673v6_lwg62_64-user 10 QP1A.190711.020 p1k61v164bspP29 release-keys"
