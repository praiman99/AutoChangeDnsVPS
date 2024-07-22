#!/bin/bash
==================================
# Create by https://t.me/PR_Aiman
# Copyright © Beginner 2024
==================================

# Download file Dns Change
cd /usr/bin
wget -O Dns "https://github.com/praiman99/AutoChangeDnsVPS/raw/Beginner/Dns.sh"; chmod +x Dns
bash Dns

# Add Dns Change At Crontab
echo "0 6 * * * root bash Dns" >> /etc/crontab

# Add Auto Enable Warp At Crontab
cd /usr/bin
wget -O warp "git.io/warp.sh"; chmod +x warp
bash warp wg4
bash warp-cli enable-always-on
echo "5 6 * * * root bash warp wg4" >> /etc/crontab
echo "6 6 * * * root bash warp-cli enable-always-on" >> /etc/crontab
bash <(curl -sSL https://gitlab.com/fscarmen/warp_unlock/-/raw/main/unlock.sh) -E -A my -4 -ud -M 1 
