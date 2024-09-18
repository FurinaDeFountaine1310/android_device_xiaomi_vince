#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from vince device
$(call inherit-product, device/xiaomi/vince/device.mk)

# Signed
$(call inherit-product, vendor/rsyd-keys/product.mk)

# Viper4AndroidFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ENABLE_BLUR := false
TARGET_FACE_UNLOCK_SUPPORTED := true
PRODUCT_NO_CAMERA := false
TARGET_SHIP_LINEAGE_PREBUILTS := true
TARGET_EXCLUDES_AUDIOFX := true

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 1

# TARGET_LAUNCHER options:
# 1 - stock (default)
# 2 - lawnchair
# 3 - pixel (valid only on gapps builds)
TARGET_LAUNCHER := 1

# Debugging
TARGET_INCLUDE_MATLOG := false

# Maintainer
ALPHA_BUILD_TYPE := Community
ALPHA_MAINTAINER := Rsyd58

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vince
PRODUCT_NAME := lineage_vince
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5 Plus
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT="vince" \
    BUILD_NUMBER="V816.2.5.0.UEGMIXM" \
    BUILD_FINGERPRINT="$(PRODUCT_BRAND)/vince/$(TARGET_DEVICE):$(PLATFORM_VERSION)/$(BUILD_ID)/V816.5.2.1.UEGMIXM:$(TARGET_BUILD_VARIANT)/$(BUILD_VERSION_TAGS)" \
    BUILD_NUMBER_FROM_FILE="V816.2.5.0.UEGMIXM" \
    BUILD_FINGERPRINT_FROM_FILE="$(PRODUCT_BRAND)/vince/$(TARGET_DEVICE):$(PLATFORM_VERSION)/$(BUILD_ID)/V816.2.5.0.UEGMIXM:$(TARGET_BUILD_VARIANT)/$(BUILD_VERSION_TAGS)" \
    BUILD_DISPLAY_ID="$(BUILD_ID) V816.2.5.0.UEGMIXM $(BUILD_KEYS)" \
    BUILD_USERNAME="Rsyd58" \
    BUILD_ID="UKQ1.240905.003"

