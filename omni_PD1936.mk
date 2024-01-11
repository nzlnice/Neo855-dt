#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from PD1936 device
$(call inherit-product, device/vivo/PD1936/device.mk)

PRODUCT_DEVICE := PD1936
PRODUCT_NAME := omni_PD1936
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V1936A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="PD1936-user 11 RP1A.200720.012 compiler0714182446 release-keys"

BUILD_FINGERPRINT := vivo/PD1936/PD1936:11/RP1A.200720.012/compiler0714182446:user/release-keys
