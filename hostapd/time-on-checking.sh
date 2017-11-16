#!/system/bin/sh
on=0
n=`busybox date +'%s'`
d=`expr $n + 28800`
#echo $d
dow=`busybox date -d @$d -u +'%w'`
#echo $dow
h=`busybox date -d @$d -u +'%k'`
#echo $dow  $hour

case $dow in
        0) #Sunday
        if [[ $h -ge 19 ]]; then
                on=1
        fi
        ;;
        [1-4]) #Monday to thurthday
        if [[ $h -ge 7 && $h -lt 10 || $h -ge 19 ]]; then
                on=1
        fi
        ;;
        5) #Friday
        if [[ $h -ge 7 && $h -lt 10 ]]; then
                on=1
        fi
        ;;
esac
echo $on

