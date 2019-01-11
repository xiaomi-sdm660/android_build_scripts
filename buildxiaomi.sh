
export HAVOC_BUILD_TYPE=Official
export OUT_DIR_COMMON_BASE=/ssd/output

rm -f /ssd/output/havoc/.lock

source build/envsetup.sh
brunch  havoc_clover-userdebug

rm -f /ssd/output/havoc/.lock

source build/envsetup.sh
brunch  havoc_wayne-userdebug


rm -f /ssd/output/havoc/.lock

source build/envsetup.sh
brunch havoc_jasmine-userdebug
