
export OUT_DIR_COMMON_BASE=/ssd/output
rm -f /ssd/output/havoc/.lock

source build/envsetup.sh
brunch havoc_clover-userdebug -j12

rm -f /ssd/output/havoc/.lock

source build/envsetup.sh
brunch havoc_wayne-userdebug -j12

rm -f /ssd/output/havoc/.lock

source build/envsetup.sh
brunch havoc_jasmine-userdebug -j12
