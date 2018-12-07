
source build/envsetup.sh && lunch carbon_wayne-userdebug
adb pull /sys/fs/selinux/policy
adb logcat -b all -d | ./external/selinux/prebuilts/bin/audit2allow -p policy
