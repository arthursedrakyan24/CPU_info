#!/bin/bash


#Function Ping creates the file with the name pingoutput and writes in the file the result of the ping action and outputs it. With the command ping we checking the connection with the google.com(correctly checking the connection with the server of google.com). Also we output and write in the same file the current date and nameserver.

Ping () {
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
}

# With this function we output the information about RAM and CPU.

Ramcpu () {
echo "RAM"
echo "--------------------------------------------------------------------------------"
head /proc/meminfo
echo "--------------------------------------------------------------------------------"
echo "CPU"
head /proc/cpuinfo
}

# With this function we output the information about CPU (more detailed), kernel etc.

Cores () {
echo 'CPU CORES'
free -m
echo '--------------------------------------------------------------------------------'
lscpu
echo '--------------------------------------------------------------------------------'
df -h
echo '--------------------------------------------------------------------------------'
uname --version
}

Ping
Ramcpu
Cores
