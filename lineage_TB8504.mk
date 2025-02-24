#
# Copyright (C) 2018 The LineageOS Project
#
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/TB8504/device.mk)

PRODUCT_BRAND := Lenovo
PRODUCT_DEVICE := TB8504
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo TB-8504X
PRODUCT_NAME := lineage_TB8704

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := rolex

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="TB-8504X" \
    PRIVATE_BUILD_DESC="msm8937_64-user 7.1.1 NMF26F 130 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Lenovo/TB-8504X/TB-8504X:7.1.1/NMF26F/TB-8504X_USR_S046_171125_Q12000_ROW:user/release-keys"
