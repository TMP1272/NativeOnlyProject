LOCAL_PATH := $(call my-dir)

# ====================
# firebaseconfig
# ====================
include $(CLEAR_VARS)
LOCAL_MODULE        := firebase_api
LOCAL_SRC_FILES     := firebase_api.cpp

LOCAL_STRIP_MODULE  := true
LOCAL_CFLAGS        += -O3 -flto -ffunction-sections -fdata-sections -fvisibility-inlines-hidden
LOCAL_LDFLAGS       += -s -flto -Wl,--gc-sections
LOCAL_LDLIBS        += -llog
include $(BUILD_SHARED_LIBRARY)
