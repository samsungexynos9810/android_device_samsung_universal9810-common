#include <hardware/hardware.h>
#include <hidl/HidlSupport.h>
#include <hidl/LegacySupport.h>
#include <hidl/Status.h>
#include <vendor/outsiders/security/selinux/1.0/ISELinux.h>
#include "jni.h"

using android::sp;
using vendor::outsiders::security::selinux::V1_0::Enable;
using vendor::outsiders::security::selinux::V1_0::ISELinux;

extern "C" JNIEXPORT jint JNICALL
Java_com_outsiders_samsungextras_interfaces_SELinux_getSELinux(JNIEnv* env, jclass clazz) {
    android::sp<ISELinux> service = ISELinux::getService();
    int ret = service->readSELinuxstats();
    return ret;
}
