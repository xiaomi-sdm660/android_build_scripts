export HAVOC_BUILD_TYPE=Official
export OUT_DIR_COMMON_BASE=/ssd/output

#rm -f /ssd/output/havoc/.lock
#source build/envsetup.sh
#lunch havoc_clover-userdebug
#make bootimage -j12

#rm -f /ssd/output/havoc/.lock
#source build/envsetup.sh
#lunch havoc_wayne-userdebug
#make bootimage -j12

rm -f /ssd/output/havoc/.lock
source build/envsetup.sh
lunch havoc_clover-userdebug
make bootimage -j12
