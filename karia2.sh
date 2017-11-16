#!/system/bin/sh

b=`ps |grep "/[d]ata/mmx/aria2/aria2c" |awk '{print $1}'`
echo $b
kill $b


