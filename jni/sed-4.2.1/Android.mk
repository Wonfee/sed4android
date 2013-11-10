LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	lib/set-mode-acl.c \
	lib/copy-acl.c \
	lib/file-has-acl.c \
	lib/c-ctype.c \
	lib/localcharset.c \
	lib/xalloc-die.c \
	lib/xstrndup.c \
	lib/basename.c \
	lib/dirname.c \
	lib/exitfail.c \
	lib/quote.c \
	lib/quotearg.c \
	lib/regex.c \
	lib/stripslash.c \
	lib/tempname.c \
	lib/xmalloc.c \
	lib/error.c \
	lib/obstack.c \
	lib/getline.c \
	lib/getdelim.c \
	lib/strverscmp.c \
	

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/lib/ \
	$(LOCAL_PATH)/lib/sys \

LOCAL_CFLAGS += -DHAVE_CONFIG_H

LOCAL_MODULE := libsed-4.2.1
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	sed/sed.c \
	sed/compile.c \
	sed/execute.c \
	sed/regexp.c \
	sed/fmt.c \
	sed/mbcs.c \
	sed/utils.c \

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/lib/ \
	$(LOCAL_PATH)/sed/ \
	$(LOCAL_PATH)/../libselinux/include \

LOCAL_STATIC_LIBRARIES += libsed-4.2.1 libselinux

LOCAL_CFLAGS += -DHAVE_CONFIG_H
LOCAL_MODULE := sed
include $(BUILD_EXECUTABLE)
