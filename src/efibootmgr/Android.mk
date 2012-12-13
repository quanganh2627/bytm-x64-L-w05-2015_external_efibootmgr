# Copyright 2012 The Android Open Source Project

# build executable
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include

LOCAL_SRC_FILES:= \
	efibootmgr.c

LOCAL_MODULE:= efibootmgr

LOCAL_MODULE_TAGS := optional

LOCAL_STATIC_LIBRARIES := libefibootmgr libpci_static

include $(BUILD_EXECUTABLE)
