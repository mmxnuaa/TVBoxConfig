#!/system/bin/sh
iptables -X
iptables -F
#iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p tcp --dport 30022 -j ACCEPT

#httpd
iptables -A INPUT -p tcp --dport 20080 -j ACCEPT
#aria2
iptables -A INPUT -p tcp --dport 6900 -j ACCEPT
iptables -A INPUT -p tcp --dport 51413 -j ACCEPT

#iptables -A INPUT -p tcp -i ppp+ --dport 8200 -j DROP
iptables -A INPUT -p tcp -i ppp+ --dport 1:65535 -m state --state NEW -j DROP

ip6tables -X
ip6tables -F
#ip6tables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
ip6tables -A INPUT -p tcp --dport 30022 -j ACCEPT

#httpd
iptables -A INPUT -p tcp --dport 20080 -j ACCEPT
#aria2
iptables -A INPUT -p tcp --dport 6900 -j ACCEPT
iptables -A INPUT -p tcp --dport 51413 -j ACCEPT

#ip6tables -A INPUT -p tcp -i ppp+ --dport 8200 -j DROP
ip6tables -A INPUT -p tcp -i ppp+ --dport 1:65535 -m state --state NEW -j DROP


