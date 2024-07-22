#!/bin/bash
==================================
# Create by https://t.me/PR_Aiman
# Copyright © Beginner 2024
==================================
# Remove old dns
rm -f /etc/resolv.conf

# Add new dns
echo "nameserver 1.1.1.1" >> /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf

# Download file Dns Change
cd /usr/bin
wget -O Dns "https://github.com/praiman99/AutoChangeDnsVPS/raw/Beginner/Dns.sh"; chmod +x Dns

# Add Dns Change At Crontab
echo "0 6 * * * root bash Dns" >> /etc/crontab

# Add Auto Enable Warp At Crontab
cd /usr/bin
wget -O warp "git.io/warp.sh"; chmod +x warp
bash warp install
bash warp wg4
echo "5 6 * * * root bash warp restart" >> /etc/crontab
echo "6 6 * * * root bash warp wg4" >> /etc/crontab

bash <(curl -sSL https://gitlab.com/fscarmen/warp_unlock/-/raw/main/unlock.sh) -E -A my -4 -ud -M 1 
# Show Status Warp
bash warp status
echo 
read -n 1 -s -r -p "Press any key to Exit"
exit
