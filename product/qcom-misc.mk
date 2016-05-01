# IPC router config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config \
    $(LOCAL_PATH)/configs/lowi.conf:system/etc/lowi.conf

# QCOM Config Script
PRODUCT_PACKAGES += \
    hsic.control.bt.sh \
    init.qcom.bt.sh \
    init.qcom.fm.sh \
    init.qcom.modem_links.sh \
    init.qcom.post_boot.sh \
    init.qcom.wifi.sh \
    qca6234-service.sh \
    usf_post_boot.sh

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8974

PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true \
    persist.usb.hvdcp.detect=true
