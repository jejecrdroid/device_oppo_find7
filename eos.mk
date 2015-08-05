#inherit device stuff
$(call inherit-product, device/oppo/find7/find7.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common stuff.
$(call inherit-product, vendor/eos/config/common.mk)
$(call inherit-product, vendor/eos/config/common_full_phone.mk)

PRODUCT_NAME := eos_find7
PRODUCT_DEVICE := find7
PRODUCT_BRAND := OPPO
PRODUCT_MANUFACTURER := OPPO
PRODUCT_MODEL := Find7

PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/eos/prebuilt/common/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=4.4.2/KVT49L/1390465867:user/release-keys \
    PRIVATE_BUILD_DESC="msm8974-user 4.4.2 KVT49L eng.root.20141017.144947 release-keys"
    
TARGET_VENDOR_PRODUCT_NAME := find7
    
# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=find7 TARGET_DEVICE=find7

PRODUCT_COPY_FILES += \
   	device/oppo/find7/prebuilt/app/OppoCAM.apk:system/priv-app/OppoCAM.apk \
	device/oppo/find7/prebuilt/app/AdAway.apk:system/priv-app/AdAway.apk \
	device/oppo/find7/prebuilt/app/V4A.apk:system/priv-app/V4A.apk \
	device/oppo/find7/prebuilt/app/FX.apk:system/priv-app/ES.apk
