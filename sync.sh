repo sync -f --force-sync

cd /ssd/cr-7.0/framework/base
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/40/233840/3 && git cherry-pick FETCH_HEAD

cd /ssd/cr-7.0
