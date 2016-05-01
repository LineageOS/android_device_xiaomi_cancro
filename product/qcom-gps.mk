# GPS
PRODUCT_PACKAGES += \
    flp.conf \
    gps.conf \
    izat.conf \
    quipc.conf \
    sap.conf

PRODUCT_PROPERTY_OVERRIDES += \
    ro.gps.agps_provider=1

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
