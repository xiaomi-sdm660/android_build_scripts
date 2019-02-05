repo sync -f --force-sync

cd /android/havoc/hardware/qcom/power
git fetch https://github.com/rcstar6696/android_hardware_qcom_power.git pie
git cherry-pick 46b96f941951a8dc46922d7172196f092a0ff90f

cd /android/havoc
