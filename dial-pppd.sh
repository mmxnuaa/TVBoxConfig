#!/system/bin/sh
killall pppd
pppd pty "pppoe -p /data/misc/etc/ppp/pppoe.pid -I eth0 -T 80 -U -m 1412" noipdefault noauth default-asyncmap defaultroute show-password nodetach mtu 1492 mru 1492 noaccomp nodeflate nopcomp novj usepeerdns novjccomp lcp-echo-interval 20 lcp-echo-failure 3 user 02502099986 password 123456 &



#pppd pty "pppoe -p /data/misc/etc/ppp/pppoe.pid -I eth0 -T 80 -U -m 1412" debug logfd 1 noipdefault noauth default-asyncmap defaultroute show-password nodetach mtu 1492 mru 1492 noaccomp nodeflate nopcomp novj usepeerdns novjccomp lcp-echo-interval 20 lcp-echo-failure 3 user 02502099986 password 123456 &
