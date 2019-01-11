
export OUT_DIR_COMMON_BASE=/ssd/output
source build/envsetup.sh
lunch havoc_clover-userdebug
make XiaomiParts -j12
