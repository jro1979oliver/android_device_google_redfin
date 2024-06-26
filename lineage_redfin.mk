#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/redfin/aosp_redfin.mk)

include device/google/redfin/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5
PRODUCT_NAME := lineage_redfin

# Rising flags
RISING_MAINTAINER := jro1979oliver
WITH_GMS := true
TARGET_PREBUILT_GOOGLE_CAMERA := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_ENABLE_BLUR := true
RISING_CHIPSET := Snapdragon765G
TARGET_BOOT_ANIMATION_RES := 1080
RISING_BATTERY := 4000mah
RISING_STORAGE := 128gb
RISING_RAM := 8gb
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_MAINTAINER="jro1979oliver"
    RISING_CHIPSET="Snapdragon765G"

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=redfin \
    PRIVATE_BUILD_DESC="redfin-user 14 UP1A.231105.001.B2 11260668 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:14/UP1A.231105.001.B2/11260668:user/release-keys

$(call inherit-product, vendor/google/redfin/redfin-vendor.mk)
