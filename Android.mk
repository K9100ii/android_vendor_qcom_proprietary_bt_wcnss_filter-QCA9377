LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Ignore HCI_RESET in filter code
# so that HCI_RESET happens only once
# regardless of the client
#LOCAL_CFLAGS += -DIGNORE_HCI_RESET

# MIMIC cmd TOUT at filter
# used to check the behavior of the system
# by mimicing the cmd tout at host
# this is only for debug purpose
# DON'T ENABLE IT FOR NORMAL BT OPERATIONS
#LOCAL_CFLAGS += -DDEBUG_MIMIC_CMD_TOUT

LOCAL_SRC_FILES := src/main.c

LOCAL_CFLAGS += -Wall -Wextra # -Werror

LOCAL_SHARED_LIBRARIES := libutils libcutils liblog

LOCAL_MODULE := wcnss_filter
LOCAL_MODULE_TAGS := optional

LOCAL_VENDOR_MODULE := true

include $(BUILD_EXECUTABLE)
