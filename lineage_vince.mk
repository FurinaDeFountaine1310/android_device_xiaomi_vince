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

# Signed Keys
$(call inherit-product, vendor/rsyd-keys/product.mk)

# Viper4AndroidFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# Missi by Xiaomi
$(call inherit-product, device/xiaomi/missi/missi.mk)

# Flags
TARGET_BOOT_ANIMATION_RES := 1080
RISING_MAINTAINER := Shitorari
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := false
TARGET_DEFAULT_PIXEL_LAUNCHER := false
WITH_GMS := false
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

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingMaintainer="Shitorari" \
    RisingChipset="Snapdragon 625" \
    DeviceProduct=vince \
    SystemName=vince \
    BuildFlavor=vince-user \
    BuildNumber=OS2.6.1.0.VEGIDXM \
    BuildFingerprint=Xiaomi/vince/vince:15/AP4A.241205.013.C1/OS2.6.1.0.VEGIDXM:user/release-keys \
    BuildDesc="vince-user 15 AP4A.241205.013.C1 OS2.6.1.0.VEGIDXM release-keys"

PRODUCT_VENDOR_PROPERTIES += \
    dalvik.vm.heapstartsize?=8m \
    dalvik.vm.heapgrowthlimit?=192m \
    dalvik.vm.heapsize?=512m \
    dalvik.vm.heaptargetutilization?=0.75 \
    dalvik.vm.heapminfree?=512k \
    dalvik.vm.heapmaxfree?=8m
