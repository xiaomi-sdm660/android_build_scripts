export CCACHE_EXEC=/usr/bin/ccache
export PERL5LIB=/android/bliss/prebuilts/tools-bliss/linux-x86/lib/perl-base/
export OUT_DIR_COMMON_BASE=/ssd/output

rm -f /ssd/output/bliss/.lock

source build/envsetup.sh
lunch  bliss_jasmine_sprout-userdebug
make blissify -j12

rm -f /ssd/output/bliss/.lock

source build/envsetup.sh
lunch  bliss_wayne-userdebug
make blissify -j12

rm -f /ssd/output/bliss/.lock

source build/envsetup.sh
lunch  bliss_clover-userdebug
make blissify -j12
