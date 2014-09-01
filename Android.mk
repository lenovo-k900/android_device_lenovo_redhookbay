LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# include x86 encoder (apache-harmony (intel))
include $(TOP)/dalvik/vm/compiler/codegen/x86/libenc/Android.mk