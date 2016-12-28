#
# Copyright (C) 2013 The CyanogenMod Project
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

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := galbi
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
USE_CLANG_PLATFORM_BUILD := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait

# Kernel
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := device/lge/d801/releasetools/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=g2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x05000000 --tags_offset 0x00000100
TARGET_KERNEL_CONFIG := cyanogenmod_d801_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/msm8974
G2_DTS_TARGET := msm8974-g2-tmo_us

# Audio
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/lge/d801/bluetooth/vnd_g2.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/d801/bluetooth

# Display
HAVE_ADRENO_SOURCE := false
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# Graphics
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DCAMERA_VENDOR_L_COMPAT

# WiFi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 # 16.7M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 # 16.7M
BOARD_CACHEIMAGE_PARTITION_SIZE := 838860800 # 830M
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432 # 33.6M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560 # 2.5G (actually 2.75, but leave room for model variation)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13725837312 # 12.8G (its much larger, but this is enough for now)
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RECOVERY_FSTAB = device/lge/d801/rootdir/etc/fstab.g2
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_g2

# TWRP
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TW_BRIGHTNESS_PATH := "/sys/devices/mdp.0/qcom\x2cmdss_fb_primary.177/leds/lcd-backlight/brightness"
TW_EXCLUDE_SUPERSU := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_MAX_BRIGHTNESS := 255
TW_NO_REBOOT_BOOTLOADER := true
TW_TARGET_USES_QCOM_BSP := true
TW_THEME := portrait_hdpi

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
COMMON_GLOBAL_CFLAGS += \
    -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' \
    -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true

# CMHW
BOARD_HARDWARE_CLASS += device/lge/d801/cmhw
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/lge_touch/touch_gesture"

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# Vendor
PRODUCT_RESTRICT_VENDOR_FILES := false

# Assert
TARGET_OTA_ASSERT_DEVICE := d801,g2,galbi

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/lge/d801/releasetools

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/lge/d801/overlay

# Includes
TARGET_SPECIFIC_HEADER_PATH += device/lge/d801/include

# RIL
BOARD_RIL_CLASS += ../../../device/lge/d801/ril

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += device/lge/d801/sepolicy
