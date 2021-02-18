#
# Copyright (C) 2020-2021 The LineageOS Project
# Copyright (C) 2021 AOSPK
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := lineage.touch@1.0-service.samsung.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/init
LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)

LOCAL_PATH := hardware/samsung/hidl/touch

include $(CLEAR_VARS)

LOCAL_MODULE := lineage.touch@1.0-service.sdm845
LOCAL_MODULE_STEM := lineage.touch@1.0-service.samsung
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_SRC_FILES := \
    GloveMode.cpp \
    KeyDisabler.cpp \
    StylusMode.cpp \
    TouchscreenGesture.cpp \
    service.cpp

LOCAL_REQUIRED_MODULES := \
    lineage.touch@1.0-service.samsung.rc

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libbinder \
    libhidlbase \
    libhidltransport \
    libutils \
    vendor.lineage.touch@1.0

include $(BUILD_EXECUTABLE)
