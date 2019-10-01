
source build/envsetup.sh
croot

repopick 255667 # adb insecure by default
repopick 257057 # build: set custom fingerprint in ro.build.fingerprint too
repopick 256911
repopick 256912
repopick 257002
repopick 240084

repopick -t ten-custom-cameraparameters

cd vendor/lineage # disable priv-app permissions enforcing
git revert -S 214dfb940218d1989fd7e57ccbd1a7e21147ebe4
cd ../../

cd frameworks/opt/net/wifi
git fetch https://github.com/WhyProject/android_frameworks_opt_net_wifi lineage-17.0 && git cherry-pick 4f59e9d28bcb3a9fd1e136ee7c88e79fd8c0d2a2
cd ../../../

cd build/make
git fetch "http://gerrit.aicp-rom.com/AICP/build" refs/changes/64/94064/10 && git cherry-pick FETCH_HEAD
cd ../../
