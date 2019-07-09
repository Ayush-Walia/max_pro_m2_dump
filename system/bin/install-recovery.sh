#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55797036:139f5a6b98ae2cf9e88de1866266a3c909fc5e48; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51741992:fbec293a02e2256d4a0b3f3a4efd57cdf88de953 EMMC:/dev/block/bootdevice/by-name/recovery 139f5a6b98ae2cf9e88de1866266a3c909fc5e48 55797036 fbec293a02e2256d4a0b3f3a4efd57cdf88de953:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
