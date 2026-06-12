LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES +=$(LOCAL_PATH)/
LOCAL_MODULE    := sgcore
LOCAL_SRC_FILES := JNICallBack.c

include $(BUILD_SHARED_LIBRARY)
