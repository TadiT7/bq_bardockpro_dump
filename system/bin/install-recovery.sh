#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32550184:7114e9a903870ded8426703fffc4bfca47865b9e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:28429604:bf907d9f60dc8bd9e991be9fe004382fc544809d EMMC:/dev/block/bootdevice/by-name/recovery 7114e9a903870ded8426703fffc4bfca47865b9e 32550184 bf907d9f60dc8bd9e991be9fe004382fc544809d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
