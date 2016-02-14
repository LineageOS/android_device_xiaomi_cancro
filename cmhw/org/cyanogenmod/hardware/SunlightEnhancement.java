/*
 * Copyright (C) 2014 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.cyanogenmod.hardware;

import org.cyanogenmod.hardware.util.FileUtils;

import android.util.Log;

import java.io.File;

/**
 * Facemelt mode!
 */
public class SunlightEnhancement {

    private static final String TAG = "SunlightEnhancement";

    private static final String FILE_SRE = "/sys/devices/virtual/graphics/fb0/sre";

    private static final boolean sHasNativeSupport =
            LiveDisplayVendorImpl.hasNativeFeature(LiveDisplayVendorImpl.OUTDOOR_MODE);

    /**
     * Whether device supports SRE
     *
     * @return boolean Supported devices must return always true
     */
    public static boolean isSupported() {
        if (sHasNativeSupport) {
            return true;
        }

        File f = new File(FILE_SRE);

        if(f.exists()) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * This method return the current activation status of SRE
     *
     * @return boolean Must be false when SRE is not supported or not activated, or
     * the operation failed while reading the status; true in any other case.
     */
    public static boolean isEnabled() {
        try {
            if (sHasNativeSupport) {
                return LiveDisplayVendorImpl.native_isOutdoorModeEnabled();
            }
            return Integer.parseInt(FileUtils.readOneLine(FILE_SRE)) > 0;
        } catch (Exception e) {
            Log.e(TAG, e.getMessage(), e);
        }
        return false;
    }

    /**
     * This method allows to setup SRE
     *
     * @param status The new SRE status
     * @return boolean Must be false if SRE is not supported or the operation
     * failed; true in any other case.
     */
    public static boolean setEnabled(boolean status) {
        if (sHasNativeSupport) {
            return LiveDisplayVendorImpl.native_setOutdoorModeEnabled(status);
        }

        return FileUtils.writeLine(FILE_SRE, status ? "2" : "0");
    }

    /**
     * Whether adaptive backlight (CABL / CABC) is required to be enabled
     *
     * @return boolean False if adaptive backlight is not a dependency
     */
    public static boolean isAdaptiveBacklightRequired() {
        return false;
    }

    /**
     * Set this to true if the implementation is self-managed and does
     * it's own ambient sensing. In this case, setEnabled is assumed
     * to toggle the feature on or off, but not activate it. If set
     * to false, LiveDisplay will call setEnabled when the ambient lux
     * threshold is crossed.
     *
     * @return true if this enhancement is self-managed
     */
    public static boolean isSelfManaged() {
        return false;
    }
}
