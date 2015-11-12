LOCAL_PATH:= $(call my-dir)

#If you want to use the legacy way(by using NV) of set the BT address
#You can set the value to 0
BT_QSOC_GET_ITEMS_FROM_PERSIST = 1

ifeq ($(BT_QSOC_GET_ITEMS_FROM_PERSIST),1)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES:= $(LOCAL_PATH)

LOCAL_SRC_FILES:=  bt_nv.cpp
LOCAL_C_INCLUDES += ../../common/inc

LOCAL_MODULE:= libbtnv
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := qcom
LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_SHARED_LIBRARY)

endif # BT_QSOC_GET_ITEMS_FROM_PERSIST

TEMP_LOCAL_PATH := $(LOCAL_PATH)

ifeq ($(BOARD_HAS_QCA_BT_ROME_USB),true)
    include $(TEMP_LOCAL_PATH)/rome_usb/Android.mk
endif
ifeq ($(WCNSS_FILTER_USES_SIBS),true)
    include $(TEMP_LOCAL_PATH)/wcnss_filter/Android.mk
endif
