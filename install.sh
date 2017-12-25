#!/bin/bash
apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev git vim supervisor cpulimit

mkdir /root/1
cp ./xmr-stak-cpu /root/1/xmr-stak-cpu
cp ./config.txt /root/1/config.txt

sysctl -w vm.nr_hugepages=128
ulimit -l
cp -rf ./limits.conf /etc/security/limits.conf

cp -rf ./supervisord.conf /etc/supervisor/supervisord.conf
/etc/init.d/supervisor restart all

#cp -rf ./rc.local /etc/rc.local
#/etc/rc.local
