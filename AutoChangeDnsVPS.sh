#!/bin/bash
==================================
# Create by https://t.me/PR_Aiman
# Copyright © Beginner 2024
==================================

# Download file Dns Change
cd /usr/bin
wget -O Dns "https://github.com/praiman99/AutoChangeDnsVPS/raw/Beginner/Dns.sh"; chmod +x Dns

# Add Dns Change At Crontab
echo "10 0 * * * root bash Dns" >> /etc/crontab

# Add Auto Enable Warp At Crontab
cd /usr/bin
wget -O warp "git.io/warp.sh"; chmod +x warp
echo "15 0 * * * root bash warp wg4" >> /etc/crontab
