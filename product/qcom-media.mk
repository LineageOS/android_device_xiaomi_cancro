# Media & Audio
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc

PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.smoothstreaming=true \
    vidc.debug.level=1
