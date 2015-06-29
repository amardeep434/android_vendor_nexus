# Copyright (C) 2015 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/supersu/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/nexus/prebuilt/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

#Google Prebuilts
PRODUCT_PACKAGES += \
    BrowserProviderProxy \
    CalendarGooglePrebuilt \
    Chrome \
    GCS \
    GoogleHome \
    GoogleCamera \
    LatinImeGoogle

ifneq ($(filter nexus_hammerhead nexus_shamu,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    PrebuiltBugle
endif

# Google Camera dependancies
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/lib/libgcam.so:system/app/GoogleCamera/lib/arm/libgcam.so \
    vendor/nexus/prebuilt/lib/libgcam_swig_jni.so:system/app/GoogleCamera/lib/arm/libgcam_swig_jni.so \
    vendor/nexus/prebuilt/lib/libjni_jpegutil.so:system/app/GoogleCamera/lib/arm/libjni_jpegutil.so \
    vendor/nexus/prebuilt/lib/libjni_tinyplanet.so:system/app/GoogleCamera/lib/arm/libjni_tinyplanet.so \
    vendor/nexus/prebuilt/lib/libjpeg.so:system/app/GoogleCamera/lib/arm/libjpeg.so \
    vendor/nexus/prebuilt/lib/liblightcycle.so:system/app/GoogleCamera/lib/arm/liblightcycle.so \
    vendor/nexus/prebuilt/lib/libnativehelper_compat_libc++.so:system/app/GoogleCamera/lib/arm/libnativehelper_compat_libc++.so \
    vendor/nexus/prebuilt/lib/librefocus.so:system/app/GoogleCamera/lib/arm/librefocus.so \
    vendor/nexus/prebuilt/lib/librsjni.so:system/app/GoogleCamera/lib/arm/librsjni.so \
    vendor/nexus/prebuilt/lib/librs.layered_filter_f32.so:system/app/GoogleCamera/lib/arm/librs.layered_filter_f32.so \
    vendor/nexus/prebuilt/lib/librs.layered_filter_fast_f32.so:system/app/GoogleCamera/lib/arm/librs.layered_filter_fast_f32.so \
    vendor/nexus/prebuilt/lib/libRSSupport.so:system/app/GoogleCamera/lib/arm/libRSSupport.so
ifneq ($(filter nexus_hammerhead nexus_shamu,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    com.google.android.camera2
endif
ifneq ($(filter nexus_hammerhead nexus_shamu,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/etc/permissions/com.google.android.camera2.xml:system/etc/permissions/com.google.android.camera2.xml
endif

# Google Chrome dependancies
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/lib/libchromium_android_linker.so:system/app/Chrome/lib/arm/libchromium_android_linker.so \
    vendor/nexus/prebuilt/lib/libchrome.so:system/app/Chrome/lib/arm/libchrome.so 

# Google Keyboard dependancies
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/lib/libjni_keyboarddecoder.so:system/app/LatinImeGoogle/lib/arm/libjni_keyboarddecoder.so \
    vendor/nexus/prebuilt/lib/libjni_unbundled_latinimegoogle.so:system/app/LatinImeGoogle/lib/arm/libjni_unbundled_latinimegoogle.so 

# Google Messenger dependancies
ifneq ($(filter nexus_hammerhead nexus_shamu,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/lib/libframesequence.so:system/app/PrebuiltBugle/lib/arm/libframesequence.so \
    vendor/nexus/prebuilt/lib/libgiftranscode.so:system/app/PrebuiltBugle/lib/arm/libgiftranscode.so
endif
