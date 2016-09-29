#!/system/bin/sh
pslist=`ps` 
cnt=`echo $pslist | grep EmbedThunderManager | wc -l`
#echo $cnt
if [ a"$cnt" == a0 ]; then
   log -t mmx-check-xunlei "xunlei is dead"
   /data/mmx/xunlei/start.sh
else
   log -t mmx-check-xunlei "xunlei is running"
fi

