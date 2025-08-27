package com.example.nativeonly;

public class Main {
    static {
        System.loadLibrary("firebase_native");
    }

    public static native String getFAK();
}
