# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2021 The LineageOS Project

# Device specific property overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.arch=exynos9810 \
    persist.demo.hdmirotationlock=false \
    dev.usbsetting.embedded=on \
    aaudio.mmap_policy=2 \
    aaudio.mmap_exclusive_policy=2 \
    aaudio.hw_burst_min_usec=2000 \
    af.fast_track_multiplier=1 \
    ro.config.num_speaker=1 \
    ro.config.num_mic=2 \
    ro.config.num_proximity=0 \
    ro.config.speaker_amp=1 \
    ro.config.bluetooth=external \
    ro.config.fmradio=external \
    ro.opengles.version=196610 \
    debug.slsi_platform=1 \
    debug.hwc.winupdate=1 \
    debug.sf.disable_backpressure=1 \
    ro.vendor.ddk.set.afbc=1 \
    ro.hdcp2.rx=tz \
    keyguard.no_require_sim=true \
    security.securehw.available=false \
    security.securenvm.available=false \
    dalvik.vm.lockprof.threshold=500 \
    ro.carrier=unknown \
    vendor.rild.libpath=/vendor/lib64/libsec-ril.so \
    vendor.sec.rild.libpath=/vendor/lib64/libsec-ril.so \
    vendor.sec.rild.libpath2=/vendor/lib64/libsec-ril-dsds.so \
    ro.vendor.build.version.sehi=2901 \
    ro.sf.lcd_density=480 \
    ro.sf.init.lcd_density=640 \
    ro.build.scafe.version=2020A \
    ro.frp.pst=/dev/block/persistent \
    sys.usb.ffs.aio_compat=true \
    ro.config.systemaudiodebug=abox&codecdsp \
    ro.gfx.driver.0=com.samsung.gpudriver.S9MaliG72_90 \
    ro.hardware.egl=mali \
    ro.zygote.disable_gl_preload=true

# Audio
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.usb_by_primary=no \
    ro.config.a2dp_by_primary=no

# Surfaceflinger
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_hwc_vds=1

# Telephony
PRODUCT_PRODUCT_PROPERTIES += \
    ro.telephony.default_network=9,9

# Bluetooth
PRODUCT_PRODUCT_PROPERTIES += \
    persist.bt.enableAptXHD=false

# Sound
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.vc_call_vol_steps=7

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.enable_suspend=true

# dex2oat
PRODUCT_PRODUCT_PROPERTIES += \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.image-dex2oat-threads=8 \
    dalvik.vm.image-dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.dex2oat-filter=quicken \
    dalvik.vm.dex2oat-threads=8 \
    dalvik.vm.dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.boot-dex2oat-cpu-set=0,1,2,3,4,5,6,7

# priv-app permissions
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=disable

# SOC
PRODUCT_PRODUCT_PROPERTIES += \
    ro.soc.manufacturer=Samsung \
    ro.soc.model=Exynos 9810

# Disable SMD sensor
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.smd=false

# Samsung specific
PRODUCT_PRODUCT_PROPERTIES += \
    ro.product_ship=true \
    ro.vendor.cscsupported=1

# Wifi direct
PRODUCT_PRODUCT_PROPERTIES += \
    wifi.direct.interface=p2p0
