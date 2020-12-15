rm -f /home/$USER/awk/.lock
source build/envsetup.sh
lunch awaken_jasmine_sprout-user
make bootimage -j16
