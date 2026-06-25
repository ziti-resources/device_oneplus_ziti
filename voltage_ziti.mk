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

# Inherit some common Voltage stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

PRODUCT_NAME := voltage_ziti
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

# Device attestation
PRODUCT_MANUFACTURER_FOR_ATTESTATION := OnePlus
PRODUCT_BRAND_FOR_ATTESTATION :=  OnePlus
PRODUCT_DEVICE_FOR_ATTESTATION :=  ziti
PRODUCT_NAME_FOR_ATTESTATION := OnePlus Nord CE3 5G
PRODUCT_MODEL_FOR_ATTESTATION := CPH2569

# VoltageOS flags
PRODUCT_NO_CAMERA:= true
EXTRA_UDFPS_ANIMATIONS:= true
