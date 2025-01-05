MISSI_PATH := device/xiaomi/missi

# A/B Defined
AB_OTA_UPDATER := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    $(MISSI_PATH) \
    kernel/xiaomi/vince

TARGET_ODM_PROP := $(MISSI_PATH)/odm.prop
TARGET_PRODUCT_PROP := $(MISSI_PATH)/product.prop
TARGET_SYSTEM_EXT_PROP := $(MISSI_PATH)/system_ext.prop
TARGET_SYSTEM_PROP := $(MISSI_PATH)/system.prop
TARGET_VENDOR_PROP := $(MISSI_PATH)/vendor.prop

# Board SystemImage
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0

# AOSP overlays
PRODUCT_PACKAGES += \
    NavigationBarMode2ButtonOverlay

TARGET_DISABLE_EPPE := true

PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=Galaxy_Bells.ogg \
    ro.config.notification_sound=Whistle.ogg \
    ro.config.alarm_alert=HomeComing.ogg

# AOSP Audio
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage14.mk)

# Lineage Audio
$(call inherit-product-if-exists, vendor/lineage/config/lineage_audio.mk)

# Samsung Audio
PRODUCT_COPY_FILES += \
    $(MISSI_PATH)/media/audio/Galaxy_Bells.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Galaxy_Bells.ogg \
    $(MISSI_PATH)/media/audio/HomeComing.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/HomeComing.ogg \
    $(MISSI_PATH)/media/audio/HomeComing.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/HomeComing.ogg \
    $(MISSI_PATH)/media/audio/Morning_flower.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/Morning_flower.ogg \
    $(MISSI_PATH)/media/audio/Over_the_horizon.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Over_The_Horizon.ogg \
    $(MISSI_PATH)/media/audio/Spaceline.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Spaceline.ogg \
    $(MISSI_PATH)/media/audio/Whistle.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Whistle.ogg
