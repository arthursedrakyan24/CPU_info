#!/bin/bash

echo "DATE"
date
echo "----------------------------------------------------"


echo "DATE"  >> pingoutput
date >> pingoutput
echo "----------------------------------------------------" >> pingoutput


echo "PING"
ping -c 1 google.com
echo "----------------------------------------------------"


echo "PING" >> pingoutput
ping -c 1 google.com >> pingoutput
echo "----------------------------------------------------" >> pingoutput

echo "RESOLV.CONF"
sed -n 2p /etc/resolv.conf
echo "----------------------------------------------------"


echo "RESOLV.CONF" >> pingoutput
sed -n 2p /etc/resolv.conf >> pingoutput
echo "----------------------------------------------------" >> pingoutput

echo "HOSTS"
cat /etc/hosts
echo "----------------------------------------------------"


echo "HOSTS" >> pingoutput
cat /etc/hosts >> pingoutput
echo "----------------------------------------------------" >> pingoutput
