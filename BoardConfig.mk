#
# Copyright 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Board device path
DEVICE_PATH := device/sony/suzu

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8952

# Platform
TARGET_BOARD_PLATFORM := msm8952
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := false

# Crypto
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

# Second architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true

# Kernel properties
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

# Kernel configurations
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

# Kernel cmdline
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += zram.backend=z3fold androidboot.selinux=permissive buildvariant=userdebug

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 7843348480
BOARD_USERDATAIMAGE_PARTITION_SIZE := 22225600512
BOARD_ODMIMAGE_PARTITION_SIZE := 419430400

# Partitions format
TARGET_USES_MKE2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Encryption
PLATFORM_VERSION := 16.1.0
PLATFORM_SECURITY_PATCH := 2025-12-31

# 64BIT BINDER
TARGET_USES_64_BIT_BINDER := true

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_HW_DISK_ENCRYPTION := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

# TWRP configurations
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 4095
TW_DEFAULT_BRIGHTNESS := 1050
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_IGNORE_ABS_MT_TRACKING_ID := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_NO_SCREEN_BLANK := true
TW_USE_TOOLBOX := true
TW_THEME := portrait_hdpi

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := system/vendor

# Path of your SHRP Tree
SHRP_PATH := device/sony/suzu
SHRP_MAINTAINER := Holan
SHRP_DEVICE_CODE := suzu
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 1

# Max Brightness of LED (Optional)
SHRP_FLASH_MAX_BRIGHTNESS := 200

# SHRP_Recovery Configuration
SHRP_REC := /dev/block/bootdevice/by-name/FOTAKernel 
SHRP_REC_TYPE := normal
SHRP_DEVICE_TYPE := A_only
