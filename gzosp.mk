# Boot Animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

$(call inherit-product, device/google/taimen/aosp_taimen.mk)

$(call inherit-product, vendor/gzosp/config/common_full_phone.mk)

PRODUCT_NAME := gzosp_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
TARGET_MANUFACTURER := LG
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:8.0.0/OPD1.170816.025/4424668:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 8.0.0 OPD1.170816.025 4424668 release-keys"

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
