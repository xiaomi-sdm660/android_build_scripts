rm -f /ssd/cr-7.0/out/.lock
source build/envsetup.sh
lunch carbon_clover-userdebug
make bootimage -j12

 rm -f /ssd/cr-7.0/out/.lock
source build/envsetup.sh
lunch carbon_wayne-userdebug
make bootimage -j12 

rm -f /ssd/cr-7.0/out/.lock
source build/envsetup.sh
lunch carbon_jasmine-userdebug
make bootimage -j12 
