
export OUT_DIR_COMMON_BASE=/ssd/output
source build/envsetup.sh
lunch havoc_clover-userdebug
make android.hardware.light@2.0-service.xiaomi_sdm660 -j12
