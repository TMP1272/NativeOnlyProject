package com.example.nativeonly;

import android.app.Activity;
import android.os.Bundle;

public class Main extends Activity {
    static {
        System.loadLibrary("firebase_native");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    public native String getFAK();
}
