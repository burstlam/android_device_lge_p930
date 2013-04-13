$(call inherit-product, device/lge/iprj-common/iprj.mk)

$(call inherit-product-if-exists, vendor/lge/p930/p930-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p930/overlay

## These are different between models
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    $(LOCAL_PATH)/fstab.iprj:root/fstab.iprj

## Model specific files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.iprj.rc:root/init.iprj.rc

PRODUCT_NAME := full_p930 
PRODUCT_DEVICE := p930 
PRODUCT_MODEL := LG-P930
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/iprj-common/iprj.mk)
$(call inherit-product-if-exists, vendor/lge/p930/p930-vendor.mk) 
