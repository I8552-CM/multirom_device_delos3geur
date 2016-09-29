# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit common language setup
$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit u8833 vendor setup
$(call inherit-product-if-exists, vendor/samsung/delos3geur/delos3geur-vendor.mk)

# Path to overlay files
DEVICE_PACKAGE_OVERLAYS += device/samsung/delos3geur/overlay

# Files needed for recovery image
PRODUCT_COPY_FILES += \
device/samsung/delos3geur/recovery/sbin/charge_recovery:/recovery/root/sbin/charge_recovery \
device/samsung/delos3geur/recovery/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
device/samsung/delos3geur/recovery/sbin/rmt_oeminfo_recovery:/recovery/root/sbin/rmt_oeminfo_recovery \
device/samsung/delos3geur/recovery/sbin/linker:/recovery/root/sbin/linker \
device/samsung/delos3geur/recovery/sbin/charge.sh:/recovery/root/sbin/charge.sh \
device/samsung/delos3geur/recovery/tp/1191601.img:root/tp/1191601.img \
device/samsung/delos3geur/recovery/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
