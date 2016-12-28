
# Device Stuff
$(call inherit-product, device/lge/d801/d801.mk)

# PAC Stuff
$(call inherit-product, vendor/pac/config/common_full_phone.mk)

# NFC Stuff
$(call inherit-product, vendor/pac/config/nfc_enhanced.mk)

# Release Name
PRODUCT_RELEASE_NAME := d801

# Bootanimation
PAC_BOOTANIMATION_NAME := 1080

# Device Naming
PRODUCT_DEVICE := d801
PRODUCT_NAME := pac_d801
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-D801
PRODUCT_MANUFACTURER := LGE

# Device Overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="g2_tmo_us" \
    PRIVATE_BUILD_DESC="g2_tmo_us-user 5.0.2 LRX22G 1507914346dda release-keys" \
    BUILD_FINGERPRINT="lge/g2_tmo_us/g2:5.0.2/LRX22G/1507914346dda:user/release-keys"
