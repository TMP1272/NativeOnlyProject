LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := firebase_native
LOCAL_SRC_FILES := firebase_api.cpp
LOCAL_LDLIBS    := -llog

include $(BUILD_SHARED_LIBRARY)
