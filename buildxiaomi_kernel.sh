export CCACHE_EXEC=/usr/bin/ccache
export PERL5LIB=/android/los/prebuilts/tools-lineage/linux-x86/lib/perl-base/
export OUT_DIR_COMMON_BASE=/ssd/output

rm -f /ssd/output/los/.lock
source build/envsetup.sh
lunch lineage_jasmine_sprout-userdebug
make bootimage -j12

rm -f /ssd/output/los/.lock
source build/envsetup.sh
lunch lineage_clover-userdebug
make bootimage -j12

rm -f /ssd/output/los/.lock
source build/envsetup.sh
lunch lineage_wayne-userdebug
make bootimage -j12
