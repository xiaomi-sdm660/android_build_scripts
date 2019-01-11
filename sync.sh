repo sync -f --force-sync

cd /android/havoc/frameworks/base
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/40/233840/3 && git cherry-pick FETCH_HEAD
git fetch https://github.com/tejasrokade/android_frameworks_base.git pie
git cherry-pick 44d95f701a316f20b660924256b10557640070a1
git cherry-pick 550a695602e001a9acc74f7ab458c4a3097af000

cd /android/havoc/frameworks/opt/net/wifi
git fetch https://github.com/tejasrokade/android_frameworks_opt_net_wifi.git pie
git cherry-pick 1f56fcea5d0b3e246e33ee5fa3c48db5addc4c2d
git cherry-pick b8b77c7487c33428c7b8f62cb89d8ac24c9cd030

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
