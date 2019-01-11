#!/bin/sh
echo "Start OTA Generation"
echo "Upload Builds before using the script"
sleep 5

date="$(date '+%Y%m%d')"
date2="$(date '+%d.%m.%Y')"

file_path_clover="$(ls /android/havoc/out/target/product/clover/Havoc-OS-* | grep -v Changelog | grep -v md5sum | grep -v json)"
file_name_clover="$(cd /android/havoc/out/target/product/clover/ && ls Havoc-OS-* | grep -v Changelog | grep -v md5sum | grep -v json)"
file_size_clover="$(ls -l "$file_path_clover" | awk '{print $5}')"
md5_clover="$(cat "$file_path_clover".md5sum | awk '{print $1}')"

file_path_wayne="$(ls /android/havoc/out/target/product/wayne/Havoc-OS-* | grep -v Changelog | grep -v md5sum | grep -v json)"
file_name_wayne="$(cd /android/havoc/out/target/product/wayne/ && ls Havoc-OS-* | grep -v Changelog | grep -v md5sum | grep -v json)"
file_size_wayne="$(ls -l "$file_path_wayne" | awk '{print $5}')"
md5_wayne="$(cat "$file_path_wayne".md5sum | awk '{print $1}')"

file_path_jasmine="$(ls /android/havocout/target/product/jasmine/Havoc-OS-* | grep -v Changelog | grep -v md5sum | grep -v json)"
file_name_jasmine="$(cd /android/havocout/target/product/jasmine/ && ls Havoc-OS-* | grep -v Changelog | grep -v md5sum | grep -v json)"
file_size_jasmine="$(ls -l "$file_path_jasmine" | awk '{print $5}')"
md5_jasmine="$(cat "$file_path".md5sum | awk '{print $1}')"

cd  /android/havoc/OTA
git reset --hard
git fetch git@github.com:Havoc-OS/OTA.git
git checkout FETCH_HEAD
cd  /android/havoc
echo "Generate OTA for clover"
echo -e "{
   \"website_url\":\"https://sourceforge.net/projects/havoc-os/\",
   \"news_url\":\"https://t.me/Havoc_OS\",
   \"addons\": [
   {
      \"title\":\"GApps\",
      \"summary\":\"Official Open GApps\",
      \"url\":\"http://opengapps.org\"
   },
   {
      \"title\":\"Magisk\",
      \"summary\":\"Systemless Root Installer\",
      \"url\":\"https://forum.xda-developers.com/apps/magisk/official-magisk-v7-universal-systemless-t3473445\"
   },
   {
      \"title\":\"TWRP\",
      \"summary\":\"Recommand TWRP for Mi Pad 4 and Mi Pad 4 Plus\",
      \"url\":\"https://mega.nz/#!qcA2BQIJ!xiBnnC0B4Z7fqpARbIY2ARdDY4hJLZgsriJsWaCCzNQ\"
   }
   ],
   \"developer\":\"Max Weffers (rcstar6696)\",
   \"developer_url\":\"https://t.me//rcstar6696\",
   \"forum_url\":\"https:\/\/forum.xda-developers.com/mi-pad-4/development/rom-havoc-os-v2-0-t3881690\",
   \"build_date\":\"$date-0000\",
   \"url\":\"https://sourceforge.net/projects/havoc-os/files/clover/$file_name_clover/download\",
   \"filename\":\"$file_name_clover\",
   \"filesize\":\"$file_size_clover\",
   \"md5\":\"$md5_clover\"
}
" > /android/havoc/OTA/clover
echo "update OTA for clover"
cd OTA
git add -A
git commit -S -m "clover: update: $date2"
echo "Updated clover OTA succesfully"

echo "Generate OTA for wayne"
echo -e "{
   \"website_url\":\"https://sourceforge.net/projects/havoc-os/\",
   \"news_url\":\"https://t.me/Havoc_OS\",
   \"addons\": [
   {
      \"title\":\"GApps\",
      \"summary\":\"Official Open GApps\",
      \"url\":\"http://opengapps.org\"
   },
   {
      \"title\":\"Magisk\",
      \"summary\":\"Systemless Root Installer\",
      \"url\":\"https://forum.xda-developers.com/apps/magisk/official-magisk-v7-universal-systemless-t3473445\"
   },
   {
      \"title\":\"TWRP\",
      \"summary\":\"Recommand TWRP for Mi6X\",
      \"url\":\"https://drive.google.com/file/d/1EoKJZKigyybQZu9sKORHn3felhKFHGsO\"
   }
   ],
   \"developer\":\"Max Weffers (rcstar6696)\",
   \"developer_url\":\"https://t.me//rcstar6696\",
   \"forum_url\":\"https:\/\/forum.xda-developers.com/mi-a2/xiaomi-6x-wayne/rom-havoc-os-v2-0-t3881697\",
   \"build_date\":\"$date-0000\",
   \"url\":\"https://sourceforge.net/projects/havoc-os/files/wayne/$file_name_wayne/download\",
   \"filename\":\"$file_name_wayne\",
   \"filesize\":\"$file_size_wayne\",
   \"md5\":\"$md5_wayne\"
}
" > /android/havoc/OTA/wayne
echo "update OTA for wayne"
cd OTA
git add -A
git commit -S -m "wayne: update: $date2"
echo "Updated wayne OTA succesfully"

echo "Generate OTA for jasmine"
echo -e "{
   \"website_url\":\"https://sourceforge.net/projects/havoc-os/\",
   \"news_url\":\"https://t.me/Havoc_OS\",
   \"addons\": [
   {
      \"title\":\"GApps\",
      \"summary\":\"Official Open GApps\",
      \"url\":\"http://opengapps.org\"
   },
   {
      \"title\":\"Magisk\",
      \"summary\":\"Systemless Root Installer\",
      \"url\":\"https://forum.xda-developers.com/apps/magisk/official-magisk-v7-universal-systemless-t3473445\"
   },
   {
      \"title\":\"TWRP\",
      \"summary\":\"Recommand TWRP for MiA2\",
      \"url\":\"https://androidfilehost.com/?fid=11410963190603863918\"
   }
   ],
   \"developer\":\"Max Weffers (rcstar6696)\",
   \"developer_url\":\"https://t.me//rcstar6696\",
   \"forum_url\":\"https:\/\/forum.xda-developers.com/mi-a2/xiaomi-6x-wayne/rom-havoc-os-v2-0-t3881697\",
   \"build_date\":\"$date-0000\",
   \"url\":\"https://sourceforge.net/projects/havoc-os/files/jasmine/$file_name_jasmine/download\",
   \"filename\":\"$file_name_jasmine\",
   \"filesize\":\"$file_size_jasmine\",
   \"md5\":\"$md5_jasmine\"
}
" > /android/havoc/OTA/jasmine
echo "update OTA for jasmine"
cd OTA
git add -A
git commit -S -m "jasmine: update: $date2"
echo "Updated jasmine OTA succesfully"

cd  /android/havoc/OTA
git push -f git@github.com:rcstar6696/OTA.git HEAD:pie

echo "All Done :D"
echo "Don't forget to open the pull request for OTA to HAVOC Repo"
cd  /android/havoc
