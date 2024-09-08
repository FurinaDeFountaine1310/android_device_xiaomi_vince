#
# Copyright (C) 2024 The RisingOSS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common RisingOSS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from vince device
$(call inherit-product, device/xiaomi/vince/device.mk)

# Inherit from RisingOSS
TARGET_BOOT_ANIMATION_RES := 1080
RISING_MAINTAINER=Rsyd58
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := false
TARGET_DEFAULT_PIXEL_LAUNCHER := false
WITH_GMS := false
RISING_BUILDTYPE := Community
PRODUCT_NO_CAMERA := false
TARGET_SHIP_LINEAGE_PREBUILTS := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vince
PRODUCT_NAME := lineage_vince
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5 Plus
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_SYSTEM_NAME := vince

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT="vince" \
    RISING_MAINTAINER="Rsyd58" \
    RISING_CHIPSET="Snapdragon 625"
