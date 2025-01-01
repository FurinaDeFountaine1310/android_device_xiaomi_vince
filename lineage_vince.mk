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
RISING_MAINTAINER := CitlaliItztli
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := true
WITH_GMS := false
PRODUCT_NO_CAMERA := false
TARGET_DISABLE_EPPE := true

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
    RisingMaintainer="CitlaliItztli" \
    RisingChipset="Qualcomm Snapdragon 625" \
    DeviceProduct=vince \
    SystemName=vince \
    BuildFlavor=vince-user \
    BuildNumber=OS2.0.6.2.VEGMIXM \
    Platform_base_os=Xiaomi/msm8953/missi:15/AQ4A.250105.002.A4/OS2.0.6.0.VEGMIXM:user/release-keys \
    BuildFingerprint=Xiaomi/vince/vince:15/AQ4A.250105.002.A4/OS2.0.6.2.VEGMIXM:user/release-keys \
    BuildDesc="vince-user 15 AQ4A.250105.002.A4 OS2.0.6.2.VEGMIXM release-keys"

PRODUCT_VENDOR_PROPERTIES += \
    dalvik.vm.heapstartsize?=8m \
    dalvik.vm.heapgrowthlimit?=192m \
    dalvik.vm.heapsize?=512m \
    dalvik.vm.heaptargetutilization?=0.75 \
    dalvik.vm.heapminfree?=512k \
    dalvik.vm.heapmaxfree?=8m
