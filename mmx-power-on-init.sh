#!/system/bin/sh
mount -o rw,remount rootfs
mkdir /tmp
mount -t tmpfs tmpfs /tmp
mount -o ro,remount rootfs

log -t mmxpoweron system power on
crond -b -c /data/mmx/cronjob/
/data/mmx/set-route.sh
/data/mmx/kick-smbd.sh


setprop mmx.hostapd.forceon 1

#/data/mmx/xunlei/start.sh

/data/mmx/iptable_settings.sh
