# property for vendor specific library
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.perf.cores_online=1 \
    dalvik.vm.dex2oat-swap=false
