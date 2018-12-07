rm -f /ssd/los/out/.lock

source build/envsetup.sh
lunch carbon_devicename-userdebug

make module -j12
