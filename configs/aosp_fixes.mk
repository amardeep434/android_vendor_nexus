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

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Google Apns for tablets
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/etc/apns.conf:system/etc/apns.conf

# Proprietary latinime lib needed for Keyboard swyping
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Camera Effects
PRODUCT_COPY_FILES +=  \
    vendor/nexus/prebuilt/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/nexus/prebuilt/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd
