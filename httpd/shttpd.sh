#!/system/bin/sh

#1028 is the group value of files under home dir /storage/udisk0/part2/aria2Download/
httpd -p 20080 -u nobody:1028 -c /data/mmx/httpd/httpd.conf -h /storage/udisk0/part2/aria2Download/
