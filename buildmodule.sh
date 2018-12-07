export CCACHE_EXEC=/usr/bin/ccache
export OUT_DIR_COMMON_BASE=/ssd/output
source build/envsetup.sh
lunch carbon_clover-userdebug
make vndk-ext -j12
