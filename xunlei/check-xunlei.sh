#!/system/bin/sh
enable=`getprop mmx.xunlei.enable`
echo isfa"$enable"
if [ a"$enable" == a1 ]; then
   log -t mmx-check-xunlei "enable xunlei"
else
   log -t mmx-check-xunlei "disable xunlei"
   killall -s 1 EmbedThunderManager
   exit 0
fi


pslist=`ps` 
cnt=`echo $pslist | grep EmbedThunderManager | wc -l`
#echo $cnt
if [ a"$cnt" == a0 ]; then
   log -t mmx-check-xunlei "xunlei is dead"
   /data/mmx/xunlei/start.sh
else
   log -t mmx-check-xunlei "xunlei is running"
fi

