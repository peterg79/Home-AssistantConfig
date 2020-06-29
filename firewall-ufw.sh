#!/bin/bash

### https://www.jethrocarr.com/2018/06/03/firewall-rules-for-homekit-with-homeassistant/
### https://serverfault.com/questions/809643/how-do-i-use-ufw-to-open-ports-on-ipv4-only


# apt-get intall ufw
ufw allow proto tcp to 0.0.0.0/0 port ssh
ufw allow proto udp to 0.0.0.0/0 port mdns
ufw allow proto tcp to 0.0.0.0/0 port 51827
ufw allow proto tcp to 0.0.0.0/0 port 8123
ufw allow netbios-ssn
ufw allow microsoft-ds

ufw status numbered
