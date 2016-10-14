#!/system/bin/sh

ip=`netcfg | grep ppp0 | awk '{print $3}'`
echo $ip

if [ a"$ip" == a0.0.0.0/0 ]; then
   log -t mmx-check-pppd "pppd is dead"
   /data/mmx/dial-pppd.sh
fi

if [ a"$ip" == a ]; then
   log -t mmx-check-pppd "no pppd daemon"
   /data/mmx/dial-pppd.sh
fi

