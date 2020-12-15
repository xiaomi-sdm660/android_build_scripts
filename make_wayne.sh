export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 100G

rm -r /home/$USER/awk/out/.lock

source build/envsetup.sh
lunch awaken_wayne-user
make bacon -j16
