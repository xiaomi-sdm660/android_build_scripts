rm -f /ssd/los/out/.lock

source build/envsetup.sh
lunch havoc_jasmine-userdebug
make android.hardware.power@1.1-service-qti -j12
