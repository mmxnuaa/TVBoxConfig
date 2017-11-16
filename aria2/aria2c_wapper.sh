#!/system/bin/sh
cat /etc/security/cacerts/* | \
    /data/mmx/aria2/aria2c \
      --ca-certificate=/proc/self/fd/0 \
      --conf-path=/data/mmx/aria2/aria2.conf \
      --async-dns \
      --async-dns-server=`getprop net.dns1`,`getprop net.dns2` \
      "$@"
