#!/system/bin/sh
ip=`ip address list ppp0 | grep inet | awk '{print $2}'`
echo $ip

wget -O - -q http://root:18q7MIxe@118.184.176.13/dyndns/update?system=dyndns\&hostname=greenstone.f3322.org\&myip=$ip

echo wget -O - -q http://root:18q7MIxe@members.3322.org/dyndns/update?system=dyndns\&hostname=greenstone.f3322.org\&myip=$ip
