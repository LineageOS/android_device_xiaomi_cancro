# Wifi Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv_x4.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_x4.bin \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv_x4lte.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_x4lte.bin \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv_x5.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_x5.bin

PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd_default.conf \
    hostapd.deny \
    hostapd.accept \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \

