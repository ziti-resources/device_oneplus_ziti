#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ziti device
$(call inherit-product, device/oneplus/ziti/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_ziti
PRODUCT_DEVICE := ziti
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2569

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="CPH2569-user 15 AP3A.240617.008 T.R4T2.240b01e-13a36-236e6" \
    BuildFingerprint=OnePlus/CPH2569/OP5953L1:15/AP3A.240617.008/T.R4T2.240b01e-13a36-236e6:user/release-keys \
    DeviceName=OP5953L1 \
    DeviceProduct=CPH2569 \
    SystemDevice=OP5953L1 \
    SystemName=CPH2569

# LunarisAOSP build flags
LUNARIS_BUILD_TYPE := OFFICIAL
WITH_BCR:= true
TARGET_BOOT_ANIMATION_RES:= 1080
TARGET_ENABLE_BLUR := true
TARGET_CUSTOM_UDFPS := true
WITH_GMS_COMMS_SUITE := true
WITH_PIXEL_LAUNCHER := true
TARGET_USE_MAPS := false
TARGET_USE_FILES := true
TARGET_USE_GPHOTOS := true
TARGET_USE_WALLPAPERS := true
USE_DEFAULT_VULKAN := true
TARGET_NEEDS_VULKAN_MEDIA_FIX := true
