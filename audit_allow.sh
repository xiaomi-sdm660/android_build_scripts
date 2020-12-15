source build/envsetup.sh && lunch jasmine_sprout-userdebug
adb pull /sys/fs/selinux/policy
adb logcat -b all -d | ./external/selinux/prebuilts/bin/audit2allow -p policy
