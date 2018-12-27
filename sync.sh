repo sync -f --force-sync

cd /android/havoc/frameworks/base
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/40/233840/3 && git cherry-pick FETCH_HEAD

cd /android/havoc/vendor/havoc
git fetch https://github.com/rcstar6696/android_vendor_havoc.git pie
git cherry-pick 142e0bd0b173420f39c8edc568e5ea666f374e80

cd /android/havoc/hardware/qcom/power
git fetch https://github.com/rcstar6696/android_hardware_qcom_power.git pie
git cherry-pick 46b96f941951a8dc46922d7172196f092a0ff90f

cd /android/havoc/hardware/qcom/bootctrl
git fetch https://github.com/rcstar6696/android_hardware_qcom_bootctrl pie
git cherry-pick 0ba6e0e5bcb507e0f9278f1e8454a09e30ff5be8

cd /android/havoc
