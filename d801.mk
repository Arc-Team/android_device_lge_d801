#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8974 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors

# MSM8974
PRODUCT_PACKAGES += \
    camera.msm8974 \
    gps.msm8974 \
    lights.msm8974 \
    power.msm8974

# Display
PRODUCT_PACKAGES += \
    copybit.msm8974 \
    gralloc.msm8974 \
    hwcomposer.msm8974 \
    memtrack.msm8974

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    nfc_nci.bcm2079x.default \
    com.android.nfc_extras \
    Tag

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVidcCommon \
    libstagefrighthw

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# Misc
PRODUCT_PACKAGES += \
    Gello \
    Snap \
    libtime_genoff \
    TimeService \
    qcrilmsgtunnel

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.g2 \
    init.g2.rc \
    init.g2.power.rc \
    init.g2.usb.rc \
    init.recovery.g2.rc \
    set_baseband.sh \
    ueventd.g2.rc

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Bluetooth
PRODUCT_PACKAGES += \
    hwaddrs

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_g2

# BoringSSL compatability wrapper
PRODUCT_PACKAGES += \
    libboringssl-compat \
    libstlport

# Radio
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    libxml2 \
    libril_shim

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Libstagefright
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# ADSP
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/bin/adsprpcd:system/bin/adsprpcd \
    device/lge/d801/prebuilt/etc/firmware/adsp.b00:system/etc/firmware/adsp.b00 \
    device/lge/d801/prebuilt/etc/firmware/adsp.b01:system/etc/firmware/adsp.b01 \
    device/lge/d801/prebuilt/etc/firmware/adsp.b02:system/etc/firmware/adsp.b02 \
    device/lge/d801/prebuilt/etc/firmware/adsp.b03:system/etc/firmware/adsp.b03 \
    device/lge/d801/prebuilt/etc/firmware/adsp.b04:system/etc/firmware/adsp.b04 \
    device/lge/d801/prebuilt/etc/firmware/adsp.b05:system/etc/firmware/adsp.b05 \
    device/lge/d801/prebuilt/etc/firmware/adsp.b06:system/etc/firmware/adsp.b06 \
    device/lge/d801/prebuilt/etc/firmware/adsp.b07:system/etc/firmware/adsp.b07 \
    device/lge/d801/prebuilt/etc/firmware/adsp.b08:system/etc/firmware/adsp.b08 \
    device/lge/d801/prebuilt/etc/firmware/adsp.b09:system/etc/firmware/adsp.b09 \
    device/lge/d801/prebuilt/etc/firmware/adsp.b10:system/etc/firmware/adsp.b10 \
    device/lge/d801/prebuilt/etc/firmware/adsp.b11:system/etc/firmware/adsp.b11 \
    device/lge/d801/prebuilt/etc/firmware/adsp.b12:system/etc/firmware/adsp.b12 \
    device/lge/d801/prebuilt/etc/firmware/adsp.mdt:system/etc/firmware/adsp.mdt \
    device/lge/d801/prebuilt/vendor/lib/libadsprpc.so:system/vendor/lib/libadsprpc.so \
    device/lge/d801/prebuilt/vendor/lib/libfastcvadsp_stub.so:system/vendor/lib/libfastcvadsp_stub.so \
    device/lge/d801/prebuilt/vendor/lib/libfastcvopt.so:system/vendor/lib/libfastcvopt.so \
    device/lge/d801/prebuilt/vendor/lib/libscve.so:system/vendor/lib/libscve.so \
    device/lge/d801/prebuilt/vendor/lib/libscve_stub.so:system/vendor/lib/libscve_stub.so \
    device/lge/d801/prebuilt/vendor/lib/rfsa/adsp/libapps_mem_heap.so:system/vendor/lib/rfsa/adsp/libapps_mem_heap.so \
    device/lge/d801/prebuilt/vendor/lib/rfsa/adsp/libdspCV_skel.so:system/vendor/lib/rfsa/adsp/libdspCV_skel.so \
    device/lge/d801/prebuilt/vendor/lib/rfsa/adsp/libfastcvadsp_skel.so:system/vendor/lib/rfsa/adsp/libfastcvadsp_skel.so \
    device/lge/d801/prebuilt/vendor/lib/rfsa/adsp/libfastcvadsp.so:system/vendor/lib/rfsa/adsp/libfastcvadsp.so \
    device/lge/d801/prebuilt/vendor/lib/rfsa/adsp/libscveT2T_skel.so:system/vendor/lib/rfsa/adsp/libscveT2T_skel.so

# Audio
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/etc/acdbdata/Bluetooth_cal.acdb:system/etc/acdbdata/Bluetooth_cal.acdb \
    device/lge/d801/prebuilt/etc/acdbdata/General_cal.acdb:system/etc/acdbdata/General_cal.acdb \
    device/lge/d801/prebuilt/etc/acdbdata/Global_cal.acdb:system/etc/acdbdata/Global_cal.acdb \
    device/lge/d801/prebuilt/etc/acdbdata/Handset_cal.acdb:system/etc/acdbdata/Handset_cal.acdb \
    device/lge/d801/prebuilt/etc/acdbdata/Hdmi_cal.acdb:system/etc/acdbdata/Hdmi_cal.acdb \
    device/lge/d801/prebuilt/etc/acdbdata/Headset_cal.acdb:system/etc/acdbdata/Headset_cal.acdb \
    device/lge/d801/prebuilt/etc/acdbdata/Speaker_cal.acdb:system/etc/acdbdata/Speaker_cal.acdb \
    device/lge/d801/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/d801/prebuilt/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/lge/d801/prebuilt/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/lge/d801/prebuilt/vendor/lib/libacdbloader.so:system/vendor/lib/libacdbloader.so \
    device/lge/d801/prebuilt/vendor/lib/libacdbmapper.so:system/vendor/lib/libacdbmapper.so \
    device/lge/d801/prebuilt/vendor/lib/libacdbrtac.so:system/vendor/lib/libacdbrtac.so \
    device/lge/d801/prebuilt/vendor/lib/libadiertac.so:system/vendor/lib/libadiertac.so \
    device/lge/d801/prebuilt/vendor/lib/libaudcal.so:system/vendor/lib/libaudcal.so \
    device/lge/d801/prebuilt/vendor/lib/libaudioalsa.so:system/vendor/lib/libaudioalsa.so

# Audio effects
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/vendor/lib/soundfx/libqcbassboost.so:system/vendor/lib/soundfx/libqcbassboost.so \
    device/lge/d801/prebuilt/vendor/lib/soundfx/libqcreverb.so:system/vendor/lib/soundfx/libqcreverb.so \
    device/lge/d801/prebuilt/vendor/lib/soundfx/libqcvirt.so:system/vendor/lib/soundfx/libqcvirt.so

# Bluetooth
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/vendor/firmware/BCM4335B0_002.001.006.0191.0201_ORC.hcd:system/vendor/firmware/BCM4335B0_002.001.006.0191.0201_ORC.hcd \
    device/lge/d801/prebuilt/vendor/firmware/bcm4335_prepatch.hcd:system/vendor/firmware/bcm4335_prepatch.hcd

# Camera
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/lge/d801/prebuilt/lib/hw/camera.vendor.msm8974.so:system/lib/hw/camera.vendor.msm8974.so \
    device/lge/d801/prebuilt/lib/libHDR.so:system/lib/libHDR.so \
    device/lge/d801/prebuilt/lib/libmm-qcamera.so:system/lib/libmm-qcamera.so \
    device/lge/d801/prebuilt/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so \
    device/lge/d801/prebuilt/lib/libmmjpeg_interface.so:system/lib/libmmjpeg_interface.so \
    device/lge/d801/prebuilt/lib/libmorphoimageconverter_4.so:system/lib/libmorphoimageconverter_4.so \
    device/lge/d801/prebuilt/lib/libmorpho_image_stab31.so:system/lib/libmorpho_image_stab31.so \
    device/lge/d801/prebuilt/lib/libmorpho_memory_allocator.so:system/lib/libmorpho_memory_allocator.so \
    device/lge/d801/prebuilt/lib/libmorpho_noise_reduction.so:system/lib/libmorpho_noise_reduction.so \
    device/lge/d801/prebuilt/lib/libmorpho_panorama_gp.so:system/lib/libmorpho_panorama_gp.so \
    device/lge/d801/prebuilt/lib/libmorpho_panorama_wa_4.so:system/lib/libmorpho_panorama_wa_4.so \
    device/lge/d801/prebuilt/lib/libmorpho_panorama_wa_viewer.so:system/lib/libmorpho_panorama_wa_viewer.so \
    device/lge/d801/prebuilt/lib/libmorpho_sensor_fusion_4.so:system/lib/libmorpho_sensor_fusion_4.so \
    device/lge/d801/prebuilt/lib/libmorpho_video_denoiser.so:system/lib/libmorpho_video_denoiser.so \
    device/lge/d801/prebuilt/lib/libqomx_core.so:system/lib/libqomx_core.so \
    device/lge/d801/prebuilt/lib/libVDObjectTrackerAPI.so:system/lib/libVDObjectTrackerAPI.so \
    device/lge/d801/prebuilt/vendor/lib/libchromaflash.so:system/vendor/lib/libchromaflash.so \
    device/lge/d801/prebuilt/vendor/lib/libjpegdhw.so:system/vendor/lib/libjpegdhw.so \
    device/lge/d801/prebuilt/vendor/lib/libjpegehw.so:system/vendor/lib/libjpegehw.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera2_c2d_module.so:system/vendor/lib/libmmcamera2_c2d_module.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera2_cpp_module.so:system/vendor/lib/libmmcamera2_cpp_module.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera2_frame_algorithm.so:system/vendor/lib/libmmcamera2_frame_algorithm.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera2_iface_modules.so:system/vendor/lib/libmmcamera2_iface_modules.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera2_imglib_modules.so:system/vendor/lib/libmmcamera2_imglib_modules.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera2_isp_modules.so:system/vendor/lib/libmmcamera2_isp_modules.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera2_is.so:system/vendor/lib/libmmcamera2_is.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera2_pproc_modules.so:system/vendor/lib/libmmcamera2_pproc_modules.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera2_sensor_modules.so:system/vendor/lib/libmmcamera2_sensor_modules.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera2_stats_algorithm.so:system/vendor/lib/libmmcamera2_stats_algorithm.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera2_stats_modules.so:system/vendor/lib/libmmcamera2_stats_modules.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera2_vpe_module.so:system/vendor/lib/libmmcamera2_vpe_module.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera2_wnr_module.so:system/vendor/lib/libmmcamera2_wnr_module.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera_chromaflash_lib.so:system/vendor/lib/libmmcamera_chromaflash_lib.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera_faceproc.so:system/vendor/lib/libmmcamera_faceproc.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera_hdr_gb_lib.so:system/vendor/lib/libmmcamera_hdr_gb_lib.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera_hdr_lib.so:system/vendor/lib/libmmcamera_hdr_lib.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera_imglib.so:system/vendor/lib/libmmcamera_imglib.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera_imx132.so:system/vendor/lib/libmmcamera_imx132.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera_imx135.so:system/vendor/lib/libmmcamera_imx135.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera_sonyimx135_eeprom.so:system/vendor/lib/libmmcamera_sonyimx135_eeprom.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera_tintless_algo.so:system/vendor/lib/libmmcamera_tintless_algo.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera_tintless_bg_pca_algo.so:system/vendor/lib/libmmcamera_tintless_bg_pca_algo.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera_tuning.so:system/vendor/lib/libmmcamera_tuning.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera_ubifocus_lib.so:system/vendor/lib/libmmcamera_ubifocus_lib.so \
    device/lge/d801/prebuilt/vendor/lib/libmmcamera_wavelet_lib.so:system/vendor/lib/libmmcamera_wavelet_lib.so \
    device/lge/d801/prebuilt/vendor/lib/libmmipl.so:system/vendor/lib/libmmipl.so \
    device/lge/d801/prebuilt/vendor/lib/libmmjpeg.so:system/vendor/lib/libmmjpeg.so \
    device/lge/d801/prebuilt/vendor/lib/libmmqjpeg_codec.so:system/vendor/lib/libmmqjpeg_codec.so \
    device/lge/d801/prebuilt/vendor/lib/liboemcamera.so:system/vendor/lib/liboemcamera.so \
    device/lge/d801/prebuilt/vendor/lib/libqomx_jpegdec.so:system/vendor/lib/libqomx_jpegdec.so \
    device/lge/d801/prebuilt/vendor/lib/libqomx_jpegenc.so:system/vendor/lib/libqomx_jpegenc.so \
    device/lge/d801/prebuilt/vendor/lib/libubifocus.so:system/vendor/lib/libubifocus.so

# Camera actuator
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/vendor/lib/libactuator_dw9714.so:system/vendor/lib/libactuator_dw9714.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_dw9714_camcorder.so:system/vendor/lib/libactuator_dw9714_camcorder.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_dw9714_camera.so:system/vendor/lib/libactuator_dw9714_camera.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_dw9714_lgaf_1.so:system/vendor/lib/libactuator_dw9714_lgaf_1.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_dw9714_lgaf_1_camcorder.so:system/vendor/lib/libactuator_dw9714_lgaf_1_camcorder.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_dw9714_lgaf_1_camera.so:system/vendor/lib/libactuator_dw9714_lgaf_1_camera.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_dw9716.so:system/vendor/lib/libactuator_dw9716.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_dw9716_camcorder.so:system/vendor/lib/libactuator_dw9716_camcorder.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_dw9716_camera.so:system/vendor/lib/libactuator_dw9716_camera.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_iu074.so:system/vendor/lib/libactuator_iu074.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_iu074_camcorder.so:system/vendor/lib/libactuator_iu074_camcorder.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_iu074_camera.so:system/vendor/lib/libactuator_iu074_camera.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_ov12830.so:system/vendor/lib/libactuator_ov12830.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_ov12830_camcorder.so:system/vendor/lib/libactuator_ov12830_camcorder.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_ov12830_camera.so:system/vendor/lib/libactuator_ov12830_camera.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_ov8825.so:system/vendor/lib/libactuator_ov8825.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_ov8825_camcorder.so:system/vendor/lib/libactuator_ov8825_camcorder.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_ov8825_camera.so:system/vendor/lib/libactuator_ov8825_camera.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_rohm_bu64243gwz.so:system/vendor/lib/libactuator_rohm_bu64243gwz.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_rohm_bu64243gwz_camcorder.so:system/vendor/lib/libactuator_rohm_bu64243gwz_camcorder.so \
    device/lge/d801/prebuilt/vendor/lib/libactuator_rohm_bu64243gwz_camera.so:system/vendor/lib/libactuator_rohm_bu64243gwz_camera.so

# Camera chromatix
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/lib/libchromatix_imx135_liveshot.so:system/lib/libchromatix_imx135_liveshot.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx132_common.so:system/vendor/lib/libchromatix_imx132_common.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx132_default_video.so:system/vendor/lib/libchromatix_imx132_default_video.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx132_mms_video.so:system/vendor/lib/libchromatix_imx132_mms_video.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx132_preview.so:system/vendor/lib/libchromatix_imx132_preview.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx132_vt.so:system/vendor/lib/libchromatix_imx132_vt.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx135_common.so:system/vendor/lib/libchromatix_imx135_common.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx135_default_video.so:system/vendor/lib/libchromatix_imx135_default_video.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx135_hfr_120.so:system/vendor/lib/libchromatix_imx135_hfr_120.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx135_hfr_60.so:system/vendor/lib/libchromatix_imx135_hfr_60.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx135_mms_video.so:system/vendor/lib/libchromatix_imx135_mms_video.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx135_preview.so:system/vendor/lib/libchromatix_imx135_preview.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx135_snapshot.so:system/vendor/lib/libchromatix_imx135_snapshot.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx135_uhd_video.so:system/vendor/lib/libchromatix_imx135_uhd_video.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx135_video_dualrec.so:system/vendor/lib/libchromatix_imx135_video_dualrec.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx135_video_hdr.so:system/vendor/lib/libchromatix_imx135_video_hdr.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx135_video_hd.so:system/vendor/lib/libchromatix_imx135_video_hd.so \
    device/lge/d801/prebuilt/vendor/lib/libchromatix_imx135_video_qtr.so:system/vendor/lib/libchromatix_imx135_video_qtr.so

# Camera firmware
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/etc/firmware/cpp_firmware_v1_1_1.fw:system/etc/firmware/cpp_firmware_v1_1_1.fw \
    device/lge/d801/prebuilt/etc/firmware/cpp_firmware_v1_1_6.fw:system/etc/firmware/cpp_firmware_v1_1_6.fw \
    device/lge/d801/prebuilt/etc/firmware/cpp_firmware_v1_2_0.fw:system/etc/firmware/cpp_firmware_v1_2_0.fw \
    device/lge/d801/prebuilt/etc/firmware/cpp_firmware_v1_2_1.fw:system/etc/firmware/cpp_firmware_v1_2_1.fw

# DRM
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/bin/qseecomd:system/bin/qseecomd \
    device/lge/d801/prebuilt/vendor/lib/libdrmdecrypt.so:system/vendor/lib/libdrmdecrypt.so \
    device/lge/d801/prebuilt/vendor/lib/libdrmdiag.so:system/vendor/lib/libdrmdiag.so \
    device/lge/d801/prebuilt/vendor/lib/libdrmfs.so:system/vendor/lib/libdrmfs.so \
    device/lge/d801/prebuilt/vendor/lib/libdrmtime.so:system/vendor/lib/libdrmtime.so \
    device/lge/d801/prebuilt/vendor/lib/libQSEEComAPI.so:system/vendor/lib/libQSEEComAPI.so \
    device/lge/d801/prebuilt/vendor/lib/librpmb.so:system/vendor/lib/librpmb.so \
    device/lge/d801/prebuilt/vendor/lib/libssd.so:system/vendor/lib/libssd.so

# GPS
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/etc/flp.conf:system/etc/flp.conf \
    device/lge/d801/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/lge/d801/prebuilt/etc/izat.conf:system/etc/izat.conf \
    device/lge/d801/prebuilt/etc/quipc.conf:system/etc/quipc.conf \
    device/lge/d801/prebuilt/etc/sap.conf:system/etc/sap.conf \
    device/lge/d801/prebuilt/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    device/lge/d801/prebuilt/lib/libloc_ds_api.so:system/lib/libloc_ds_api.so \
    device/lge/d801/prebuilt/vendor/lib/hw/flp.default.so:system/vendor/lib/hw/flp.default.so \
    device/lge/d801/prebuilt/vendor/lib/libgeofence.so:system/vendor/lib/libgeofence.so \
    device/lge/d801/prebuilt/vendor/lib/libizat_core.so:system/vendor/lib/libizat_core.so \
    device/lge/d801/prebuilt/vendor/lib/liblbs_core.so:system/vendor/lib/liblbs_core.so

# Graphics
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/etc/firmware/a330_pfp.fw:system/etc/firmware/a330_pfp.fw \
    device/lge/d801/prebuilt/etc/firmware/a330_pm4.fw:system/etc/firmware/a330_pm4.fw \
    device/lge/d801/prebuilt/vendor/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    device/lge/d801/prebuilt/vendor/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    device/lge/d801/prebuilt/vendor/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    device/lge/d801/prebuilt/vendor/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    device/lge/d801/prebuilt/vendor/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    device/lge/d801/prebuilt/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    device/lge/d801/prebuilt/vendor/lib/libbccQTI.so:system/vendor/lib/libbccQTI.so \
    device/lge/d801/prebuilt/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    device/lge/d801/prebuilt/vendor/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    device/lge/d801/prebuilt/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
    device/lge/d801/prebuilt/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
    device/lge/d801/prebuilt/vendor/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
    device/lge/d801/prebuilt/vendor/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    device/lge/d801/prebuilt/vendor/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
    device/lge/d801/prebuilt/vendor/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
    device/lge/d801/prebuilt/vendor/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
    device/lge/d801/prebuilt/vendor/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so \
    device/lge/d801/prebuilt/vendor/lib/libuiblur.so:system/vendor/lib/libuiblur.so

# IR
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/etc/sec_config:system/etc/sec_config \
    device/lge/d801/prebuilt/lib/hw/consumerir.msm8974.so:system/lib/hw/consumerir.msm8974.so \
    device/lge/d801/prebuilt/lib/libcir_driver.so:system/lib/libcir_driver.so

# Media
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/lge/d801/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/d801/prebuilt/vendor/lib/libDivxDrm.so:system/vendor/lib/libDivxDrm.so \
    device/lge/d801/prebuilt/vendor/lib/libFileMux.so:system/vendor/lib/libFileMux.so \
    device/lge/d801/prebuilt/vendor/lib/libI420colorconvert.so:system/vendor/lib/libI420colorconvert.so \
    device/lge/d801/prebuilt/vendor/lib/libmm-color-convertor.so:system/vendor/lib/libmm-color-convertor.so \
    device/lge/d801/prebuilt/vendor/lib/libmmosal.so:system/vendor/lib/libmmosal.so \
    device/lge/d801/prebuilt/vendor/lib/libOmxAacDec.so:system/vendor/lib/libOmxAacDec.so \
    device/lge/d801/prebuilt/vendor/lib/libOmxAmrwbplusDec.so:system/vendor/lib/libOmxAmrwbplusDec.so \
    device/lge/d801/prebuilt/vendor/lib/libOmxEvrcDec.so:system/vendor/lib/libOmxEvrcDec.so \
    device/lge/d801/prebuilt/vendor/lib/libOmxMux.so:system/vendor/lib/libOmxMux.so \
    device/lge/d801/prebuilt/vendor/lib/libOmxQcelp13Dec.so:system/vendor/lib/libOmxQcelp13Dec.so \
    device/lge/d801/prebuilt/vendor/lib/libOmxWmaDec.so:system/vendor/lib/libOmxWmaDec.so \
    device/lge/d801/prebuilt/vendor/lib/libSHIMDivxDrm.so:system/vendor/lib/libSHIMDivxDrm.so \
    device/lge/d801/prebuilt/vendor/lib/libwfdcommonutils.so:system/vendor/lib/libwfdcommonutils.so

# Media firmware
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/etc/firmware/venus.b00:system/etc/firmware/venus.b00 \
    device/lge/d801/prebuilt/etc/firmware/venus.b01:system/etc/firmware/venus.b01 \
    device/lge/d801/prebuilt/etc/firmware/venus.b02:system/etc/firmware/venus.b02 \
    device/lge/d801/prebuilt/etc/firmware/venus.b03:system/etc/firmware/venus.b03 \
    device/lge/d801/prebuilt/etc/firmware/venus.b04:system/etc/firmware/venus.b04 \
    device/lge/d801/prebuilt/etc/firmware/venus.mbn:system/etc/firmware/venus.mbn \
    device/lge/d801/prebuilt/etc/firmware/venus.mdt:system/etc/firmware/venus.mdt

# NFC
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/etc/libnfc-brcm-20791b05.conf:system/etc/libnfc-brcm-20791b05.conf \
    device/lge/d801/prebuilt/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/lge/d801/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    device/lge/d801/prebuilt/vendor/firmware/BCM20791B5_002.006.013.0011.0098_Generic_I2C_NCD_Signed_configdata.ncd:system/vendor/firmware/BCM20791B5_002.006.013.0011.0098_Generic_I2C_NCD_Signed_configdata.ncd \
    device/lge/d801/prebuilt/vendor/firmware/BCM20791B5_002.006.013.0011.0098_Generic_PreI2C_NCD_Signed_configdata.ncd:system/vendor/firmware/BCM20791B5_002.006.013.0011.0098_Generic_PreI2C_NCD_Signed_configdata.ncd

# Perf
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/bin/mpdecision:system/bin/mpdecision \
    device/lge/d801/prebuilt/vendor/lib/libqti-perfd-client.so:system/vendor/lib/libqti-perfd-client.so

# Qualcomm
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/bin/irsc_util:system/bin/irsc_util \
    device/lge/d801/prebuilt/etc/permissions/qcrilhook.xml:system/etc/permissions/qcrilhook.xml \
    device/lge/d801/prebuilt/etc/permissions/qcnvitems.xml:system/etc/permissions/qcnvitems.xml \
    device/lge/d801/prebuilt/framework/qcnvitems.jar:system/framework/qcnvitems.jar \
    device/lge/d801/prebuilt/framework/qcrilhook.jar:system/framework/qcrilhook.jar \
    device/lge/d801/prebuilt/lib/libmdmdetect.so:system/lib/libmdmdetect.so \
    device/lge/d801/prebuilt/vendor/lib/libconfigdb.so:system/vendor/lib/libconfigdb.so \
    device/lge/d801/prebuilt/vendor/lib/libdiag.so:system/vendor/lib/libdiag.so \
    device/lge/d801/prebuilt/vendor/lib/libdsi_netctrl.so:system/vendor/lib/libdsi_netctrl.so \
    device/lge/d801/prebuilt/vendor/lib/libdsutils.so:system/vendor/lib/libdsutils.so \
    device/lge/d801/prebuilt/vendor/lib/libidl.so:system/vendor/lib/libidl.so \
    device/lge/d801/prebuilt/vendor/lib/libperipheral_client.so:system/vendor/lib/libperipheral_client.so \
    device/lge/d801/prebuilt/vendor/lib/libqcci_legacy.so:system/vendor/lib/libqcci_legacy.so \
    device/lge/d801/prebuilt/vendor/lib/libqdi.so:system/vendor/lib/libqdi.so \
    device/lge/d801/prebuilt/vendor/lib/libqdp.so:system/vendor/lib/libqdp.so \
    device/lge/d801/prebuilt/vendor/lib/libqmi_cci.so:system/vendor/lib/libqmi_cci.so \
    device/lge/d801/prebuilt/vendor/lib/libqmi_client_helper.so:system/vendor/lib/libqmi_client_helper.so \
    device/lge/d801/prebuilt/vendor/lib/libqmi_client_qmux.so:system/vendor/lib/libqmi_client_qmux.so \
    device/lge/d801/prebuilt/vendor/lib/libqmi_common_so.so:system/vendor/lib/libqmi_common_so.so \
    device/lge/d801/prebuilt/vendor/lib/libqmi_csi.so:system/vendor/lib/libqmi_csi.so \
    device/lge/d801/prebuilt/vendor/lib/libqmi_csvt_srvc.so:system/vendor/lib/libqmi_csvt_srvc.so \
    device/lge/d801/prebuilt/vendor/lib/libqmi_encdec.so:system/vendor/lib/libqmi_encdec.so \
    device/lge/d801/prebuilt/vendor/lib/libqmiservices.so:system/vendor/lib/libqmiservices.so \
    device/lge/d801/prebuilt/vendor/lib/libqmi.so:system/vendor/lib/libqmi.so \
    device/lge/d801/prebuilt/vendor/lib/libsmemlog.so:system/vendor/lib/libsmemlog.so \
    device/lge/d801/prebuilt/vendor/lib/libxml.so:system/vendor/lib/libxml.so

# Radio
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/bin/netmgrd:system/bin/netmgrd \
    device/lge/d801/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/lge/d801/prebuilt/bin/radish:system/bin/radish \
    device/lge/d801/prebuilt/bin/rmt_storage:system/bin/rmt_storage \
    device/lge/d801/prebuilt/lib/libril.so:system/lib/libril.so \
    device/lge/d801/prebuilt/lib/libuicc.so:system/lib/libuicc.so \
    device/lge/d801/prebuilt/lib/libvss_bsp_qcci.so:system/lib/libvss_bsp_qcci.so \
    device/lge/d801/prebuilt/lib/libvss_common_core.so:system/lib/libvss_common_core.so \
    device/lge/d801/prebuilt/lib/libvss_common_idl.so:system/lib/libvss_common_idl.so \
    device/lge/d801/prebuilt/lib/libvss_common_iface.so:system/lib/libvss_common_iface.so \
    device/lge/d801/prebuilt/lib/libvss_dmi_qcci.so:system/lib/libvss_dmi_qcci.so \
    device/lge/d801/prebuilt/lib/libvss_gnss_qcci.so:system/lib/libvss_gnss_qcci.so \
    device/lge/d801/prebuilt/lib/libvss_ims_qcci.so:system/lib/libvss_ims_qcci.so \
    device/lge/d801/prebuilt/lib/libvss_nv_core.so:system/lib/libvss_nv_core.so \
    device/lge/d801/prebuilt/lib/libvss_nv_idl.so:system/lib/libvss_nv_idl.so \
    device/lge/d801/prebuilt/lib/libvss_nv_iface.so:system/lib/libvss_nv_iface.so \
    device/lge/d801/prebuilt/lib/libvss_resim_core.so:system/lib/libvss_resim_core.so \
    device/lge/d801/prebuilt/lib/libvss_resim_idl.so:system/lib/libvss_resim_idl.so \
    device/lge/d801/prebuilt/lib/libvss_resim_iface.so:system/lib/libvss_resim_iface.so \
    device/lge/d801/prebuilt/lib/libvss_sar_qcci.so:system/lib/libvss_sar_qcci.so \
    device/lge/d801/prebuilt/vendor/lib/libcneapiclient.so:system/vendor/lib/libcneapiclient.so \
    device/lge/d801/prebuilt/vendor/lib/libnetmgr.so:system/vendor/lib/libnetmgr.so \
    device/lge/d801/prebuilt/vendor/lib/libril-qc-qmi-1.so:system/vendor/lib/libril-qc-qmi-1.so \
    device/lge/d801/prebuilt/vendor/lib/libril-qcril-hook-oem.so:system/vendor/lib/libril-qcril-hook-oem.so \
    device/lge/d801/prebuilt/vendor/lib/libsystem_health_mon.so:system/vendor/lib/libsystem_health_mon.so

# Sensors
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/bin/sensors.qcom:system/bin/sensors.qcom \
    device/lge/d801/prebuilt/etc/sensor_def_common.conf:system/etc/sensor_def_common.conf \
    device/lge/d801/prebuilt/etc/sensor_def_d801.conf:system/etc/sensor_def_variable.conf \
    device/lge/d801/prebuilt/vendor/lib/hw/activity_recognition.msm8974.so:system/vendor/lib/hw/activity_recognition.msm8974.so \
    device/lge/d801/prebuilt/vendor/lib/hw/sensors.msm8974.so:system/vendor/lib/hw/sensors.msm8974.so \
    device/lge/d801/prebuilt/vendor/lib/libsensor1.so:system/vendor/lib/libsensor1.so \
    device/lge/d801/prebuilt/vendor/lib/libsensor_reg.so:system/vendor/lib/libsensor_reg.so

# Thermal
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/bin/thermal-engine:system/bin/thermal-engine \
    device/lge/d801/prebuilt/etc/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf \
    device/lge/d801/prebuilt/vendor/lib/libthermalclient.so:system/vendor/lib/libthermalclient.so \
    device/lge/d801/prebuilt/vendor/lib/libthermalioctl.so:system/vendor/lib/libthermalioctl.so

# Time services
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/bin/time_daemon:system/bin/time_daemon \
    device/lge/d801/prebuilt/vendor/lib/libalarmservice_jni.so:system/vendor/lib/libalarmservice_jni.so \
    device/lge/d801/prebuilt/vendor/lib/libTimeService.so:system/vendor/lib/libTimeService.so

# Touchscreen
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lge/d801/prebuilt/usr/idc/touch_dev.idc:system/usr/idc/touch_dev.idc

# Widevine
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    device/lge/d801/prebuilt/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    device/lge/d801/prebuilt/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    device/lge/d801/prebuilt/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    device/lge/d801/prebuilt/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so

# WiFi
PRODUCT_COPY_FILES += \
    device/lge/d801/prebuilt/etc/firmware/fw_bcmdhd.bin:system/etc/firmware/fw_bcmdhd.bin \
    device/lge/d801/prebuilt/etc/firmware/fw_bcmdhd_apsta.bin:system/etc/firmware/fw_bcmdhd_apsta.bin \
    device/lge/d801/prebuilt/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal
