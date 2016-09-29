# Release name
PRODUCT_RELEASE_NAME := delos3geur

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration.
$(call inherit-product, device/samsung/delos3geur/delos3geur.mk)

# Device identifier.
PRODUCT_DEVICE := delos3geur
PRODUCT_NAME := omni_delos3geur
PRODUCT_BRAND := delos3geur
PRODUCT_MODEL := GT-I8552
PRODUCT_MANUFACTURER := samsung
