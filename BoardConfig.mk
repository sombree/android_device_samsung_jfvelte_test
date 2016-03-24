# Copyright (C) 2009 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from common jf
include device/samsung/jf-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/jf-gsm-common/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := jfvelte,jfveltexx,i9515,I9515,GT-I9515,GT-i9515,gt-i9515,I9515L,i9515L,i9515l,I9515l,gt-i9515l,GT-I9515L,jfltexx,i9505,GT-I9505,jgedlte,i9505g,GT-I9505G,jflte

# ANT
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Bluetooth
BOARD_BLUEDROID_VENDOR_CONF := 
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := true
BOARD_HAVE_BLUETOOTH_BCM := 
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_USE_SMD_TTY := true

# Wifi
BOARD_HAVE_SAMSUNG_WIFI := 
#WIFI_BAND := 802_11_ABG
#WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
BOARD_HAS_QCOM_WLAN              := true
TARGET_USES_WCNSS_CTRL           := true
TARGET_PROVIDES_WCNSS_QMI        := true
TARGET_USES_QCOM_WCNSS_QMI       := true
BOARD_WLAN_DEVICE                := qcwcn
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
