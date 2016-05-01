BOARD_EGL_CFG := $(DEVICE_PATH)/configs/egl.cfg

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
TARGET_USE_COMPAT_GRALLOC_PERFORM := true

VSYNC_EVENT_PHASE_OFFSET_NS    := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
