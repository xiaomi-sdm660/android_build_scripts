export CCACHE_EXEC=/usr/bin/ccache
export PERL5LIB=/android/los/prebuilts/tools-lineage/linux-x86/lib/perl-base/
export OUT_DIR_COMMON_BASE=/ssd/output

rm -f /ssd/output/los/.lock

source build/envsetup.sh
brunch lineage_jasmine_sprout-userdebug

rm -f /ssd/output/los/.lock

source build/envsetup.sh
brunch  lineage_wayne-userdebug

rm -f /ssd/output/los/.lock

source build/envsetup.sh
brunch  lineage_clover-userdebug
