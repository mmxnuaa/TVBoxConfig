#!/system/bin/sh
#iptables -t filter -F FORWARD
#iptables -t nat -F POSTROUTING
#iptables -t filter -I FORWARD -j ACCEPT
#iptables -t nat -I POSTROUTING -j MASQUERADE
#ip rule add from 192.168.43.0/24 lookup 61
#ip route add default dev tun0 scope link table 61
#ip route add 192.168.43.0/24 dev wlan0 scope link table 61
#ip route add broadcast 255.255.255.255 dev wlan0 scope link table 61



iptables -t nat -A POSTROUTING -o ppp0 -j MASQUERADE
iptables -I FORWARD -i ppp0 -o wlan0 -j ACCEPT
iptables -I FORWARD -i wlan0 -o ppp0 -j ACCEPT
