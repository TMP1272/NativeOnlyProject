# ✅ Giữ lại các hàm native để không bị xóa
-keepclasseswithmembers class * {
    native <methods>;
}

# ✅ Nếu bạn dùng RegisterNatives, không cần giữ tên hàm
# Nhưng nếu dùng ánh xạ tự động, cần giữ tên class/hàm JNI
# Ví dụ:
# -keep class com.example.nativeonly.NativeBridge {
#     public static native java.lang.String getFAK();
# }

# ✅ Nếu dùng reflection hoặc gọi từ C++, giữ tên class
# -keep class com.example.nativeonly.** { *; }

# ✅ Giữ lại thư viện nếu dùng System.loadLibrary
-keep class * {
    public static void loadLibrary(java.lang.String);
}
