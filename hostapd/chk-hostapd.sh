#!/system/bin/sh
on=0
enable=`getprop mmx.hostapd.forceon`
if [ a"$enable" == a1 ]; then
   on=1
else
   on=`/data/mmx/hostapd/time-on-checking.sh`
fi


pslist=`ps` 
cnt=`echo $pslist | grep /system/bin/hostapd | wc -l`
#echo $cnt $on
if [[ $cnt -eq 0 && $on -eq 1 ]]; then
   log -t mmx-check-hostapd "turn on WIFI ap"
   /data/mmx/hostapd/en-hostapd.sh
elif [[ $cnt -ne 0 && $on -ne 1 ]]; then
   log -t mmx-check-hostapd "turn off WIFI ap"
   /data/mmx/hostapd/off-hostapd.sh
fi

