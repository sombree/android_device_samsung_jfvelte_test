#
# Copyright (C) 2011 The CyanogenMod Project
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

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/jf-gsm-common/jf-gsm-common-vendor.mk)

## device overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/jfvelte/overlay

# Inherit from jf-common
$(call inherit-product, device/samsung/jf-common/jf-common.mk)

# Prima opensource driver files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/prima/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# add support for our wifi
PRODUCT_PACKAGES += \
    wcnss_service \
    libwcnss_qmi

# Bluetooth script and proprietary files (for now here in order not to bloat TheMuppets)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/bluetooth/btnvtool:system/bin/btnvtool \
    $(LOCAL_PATH)/bluetooth/hci_qcomm_init:system/bin/hci_qcomm_init \
    $(LOCAL_PATH)/bluetooth/libbtnv.so:system/lib/libbtnv.so

# SoftAP
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg \
    libqsap_sdk
