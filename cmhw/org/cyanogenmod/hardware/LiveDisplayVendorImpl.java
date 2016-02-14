/*
 * Copyright (C) 2015 The CyanogenMod Project
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

import android.util.Log;

import cyanogenmod.hardware.DisplayMode;

/**
 * This class loads an implementation of the LiveDisplay native interface.
 */
public class LiveDisplayVendorImpl {

    public static final String TAG = "LiveDisplayVendorImpl";

    public static final int DISPLAY_MODES = 0x1;
    public static final int COLOR_TEMPERATURE = 0x2;
    public static final int OUTDOOR_MODE = 0x4;
    public static final int ADAPTIVE_BACKLIGHT = 0x8;

    private static boolean sNativeLibraryLoaded;
    private static int     sFeatures;

    static {
        try {
            System.loadLibrary("jni_livedisplay");

            sFeatures = native_getSupportedFeatures();

            if (sFeatures > 0) {
                sNativeLibraryLoaded = true;
                Log.i(TAG, "Using native LiveDisplay backend (features: " + sFeatures + ")");
            }
        } catch (Throwable t) {
            sNativeLibraryLoaded = false;
            sFeatures = 0;
        }
    }

    public static boolean hasNativeFeature(int feature) {
        return sNativeLibraryLoaded && ((sFeatures & feature) != 0);
    }

    private static native int native_getSupportedFeatures();

    public static native DisplayMode[] native_getDisplayModes();
    public static native DisplayMode native_getCurrentDisplayMode();
    public static native DisplayMode native_getDefaultDisplayMode();
    public static native boolean native_setDisplayMode(DisplayMode mode, boolean makeDefault);

    public static native boolean native_setAdaptiveBacklightEnabled(boolean enabled);
    public static native boolean native_isAdaptiveBacklightEnabled();

    public static native boolean native_setOutdoorModeEnabled(boolean enabled);
    public static native boolean native_isOutdoorModeEnabled();
}
