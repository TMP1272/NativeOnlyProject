#include <jni.h>
#include <string>

extern "C"
JNIEXPORT jstring JNICALL
native_getFAK(JNIEnv *env, jobject) {
    std::string key = "firebase_api_key"; // Có thể mã hóa XOR tại đây
    return env->NewStringUTF(key.c_str());
}

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void*) {
    JNIEnv* env;
    if (vm->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_6) != JNI_OK) return -1;

    jclass clazz = env->FindClass("com/example/nativeonly/NativeBridge");
    if (!clazz) return -1;

    JNINativeMethod methods[] = {
        {"getFAK", "()Ljava/lang/String;", reinterpret_cast<void*>(native_getFAK)}
    };

    if (env->RegisterNatives(clazz, methods, 1) < 0) return -1;

    return JNI_VERSION_1_6;
}
