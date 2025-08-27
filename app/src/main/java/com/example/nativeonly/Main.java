package com.example.nativeonly;

public class NativeBridge {
    static {
        System.loadLibrary("firebase_native");
    }

    public static native String getFAK();
}
