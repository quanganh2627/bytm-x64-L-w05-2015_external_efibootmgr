# Copyright 2012 The Android Open Source Project

# build executable
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include

LOCAL_SRC_FILES:= \
	efibootmgr.c

ifeq ($(TARGET_KERNEL_ARCH),x86_64)
LOCAL_CFLAGS += -DFORCE_32BIT_EBM_RUN_ON_64BIT_OS
endif

LOCAL_MODULE:= efibootmgr

LOCAL_MODULE_TAGS := optional

LOCAL_STATIC_LIBRARIES := libefibootmgr libpci_static

include $(BUILD_EXECUTABLE)
