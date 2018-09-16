#!/bin/bash
#Rasbian 8: Raspberry Pi share net from wlan1 to eth0.
iptables -F;
#wpa_cli -i wlan1 reconfigure
ip route del default;
ip route add default via 192.168.1.2 dev wlan1;
ip link set dev eth0 down;
ip link set up dev eth0 up;
ip addr add 192.168.123.100/24 dev eth0;
ip route add default via 192.168.123.100 dev eth0;

iptables -t nat -A POSTROUTING -o wlan1 -j MASQUERADE
iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i eth0 -o wlan1 -j ACCEPT
ip link set up dev eth0;

