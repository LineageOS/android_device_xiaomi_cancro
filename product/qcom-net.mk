PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libbson \
    libcnefeatureconfig \
    libnl_2 \
    libqsap_sdk \
    librmnetctl \
    libxml2

# SoftAP
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg \
    libwcnss_qmi \
    wcnss_service

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0
