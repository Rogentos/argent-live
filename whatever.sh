#!/bin/bash

/bin/echo "rogentosuser:G3ntoo123" | chpasswd
/bin/ifconfig eth0 192.168.2.10 netmask 255.255.255.0 up
/bin/route add default gw 192.168.2.1
