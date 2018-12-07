export CCACHE_EXEC=/usr/bin/ccache
export PERL5LIB=/android/los/prebuilts/tools-lineage/linux-x86/lib/perl-base/
export OUT_DIR_COMMON_BASE=/ssd/output

# rm -f /ssd/output/cr/.lock
# source build/envsetup.sh
# lunch carbon_jasmine_sprout-userdebug
# make bootimage -j12

rm -f /ssd/output/los/.lock
source build/envsetup.sh
lunch carbon_clover-userdebug
make bootimage -j12

rm -f /ssd/output/los/.lock
source build/envsetup.sh
lunch carbon_wayne-userdebug
make bootimage -j12
