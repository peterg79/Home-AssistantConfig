#!/bin/bash

### https://www.jethrocarr.com/2018/06/03/firewall-rules-for-homekit-with-homeassistant/
# run on hassio host

# mDNS
iptables -A INPUT -p udp -m multiport --dports 5353 -j ACCEPT

# Homekit Protocol
iptables -A INPUT -p tcp -m multiport --dports 51827 -j ACCEPT

# Home Assistant interface
iptables -A INPUT -p tcp -m multiport --dports 8123 -j ACCEPT
