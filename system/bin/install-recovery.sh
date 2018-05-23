#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:31784232:565ebf29081aac3074e4ec578afbb31920615fa1; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27663652:abf063de75c2d9a4fb5b8c341dc2a8fd5e418ac3 EMMC:/dev/block/bootdevice/by-name/recovery 565ebf29081aac3074e4ec578afbb31920615fa1 31784232 abf063de75c2d9a4fb5b8c341dc2a8fd5e418ac3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
