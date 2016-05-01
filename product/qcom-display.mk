# Display HAL
PRODUCT_PACKAGES += \
    copybit.msm8974 \
    gralloc.msm8974 \
    hwcomposer.msm8974 \
    liboverlay \
    memtrack.msm8974

# QC CABL feature
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=1 \
    ro.qcom.ad=1 \
    ro.qcom.ad.calib.data=/system/etc/calib.cfg

# QC CABL feature
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.demo.hdmirotationlock=false \
    persist.hwc.mdpcomp.enable=true \
    persist.sys.wfd.virtual=0 \
    ro.hdmi.enable=true \
    ro.opengles.version=196608
