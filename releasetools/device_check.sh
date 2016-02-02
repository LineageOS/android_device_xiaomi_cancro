#!/sbin/sh
#
# Copyright (C) 2016 CyanogenMod Project
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
#

RAW_ID=`cat /sys/devices/system/soc/soc0/raw_id`

function removeNFC() {
    # remove nfc files
    rm -rf /system/app/NfcNci
    rm -rf /system/priv-app/Tag
    rm -rf /system/lib/*nfc*
    rm -rf /system/etc/*nfc*
    rm -rf /system/etc/permissions/*nfc*
    rm -rf /system/vendor/firmware/*bcm*
}

function pickAudio4() {
    # remove mi3 files
    rm -rf /system/etc/acdbdata/MTP
    mv /system/etc/MTP_4 /system/etc/MPT
    rm -f /system/etc/mixer_paths.xml
    mv /system/etc/mixer_paths_4.xml /system/etc/mixer_paths.xml
    rm -f /system/vendor/etc/diracmobile.config
    mv /system/vendor/etc/diracmobile.config /system/vendor/etc/diracmobile.config
}

function pickAudio3() {
    # remove mi4 files
    rm -rf /system/etc/acdbdata/MTP_4
    rm -f /system/etc/mixer_paths_4.xml
    rm -f /system/vendor/etc/diracmobile_4.config
}

if [ $RAW_ID == 1974 ]; then
    removeNFC
    audio4
else
    audio3
fi
