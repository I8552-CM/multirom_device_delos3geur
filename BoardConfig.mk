#
# Copyright (C) 2011 The Android Open-Source Project
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
#

# Platform
TARGET_BOOTLOADER_BOARD_NAME := delos3geur
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := msm7627a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a5
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x12C00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0AF00000
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_FLASH_BLOCK_SIZE := 0x00020000

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 4096
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01300000

# USB Mountingf
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_IS_MULTIROM := true
MR_DPI := hdpi
MR_INIT_DEVICES := device/samsung/delos3geur/multirom/mr_init_devices.c
MR_KEXEC_MEM_MIN := 0x00200000
MR_FSTAB := device/samsung/delos3geur/recovery.fstab
TARGET_KERNEL_SOURCE := kernel/samsung/msm7x27a
TARGET_KERNEL_CONFIG := delos_defconfig
#TARGET_RECOVERY_INITRC := device/samsung/delos3geur/init.rc
TARGET_RECOVERY_FSTAB := device/samsung/delos3geur/recovery.fstab
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#DEVICE_RESOLUTION := 480x800
TW_THEME := portrait_mdpi
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
TW_DOWNLOAD_MODE := true
SP2_NAME := "internal_sd"
SP2_BACKUP_METHOD := files
SP2_MOUNTABLE := 1
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "/external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true 
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_10x18.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.524288/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255

