#!/bin/bash
#=================================
# Create by https://t.me/PR_Aiman
# Copyright © Beginner 2024
#=================================

# Remove old dns
rm -f /etc/resolv.conf

# Add new dns
echo "nameserver 1.1.1.1" >> /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf

# Reboot
echo 
echo " Script will reboot "
echo 
sleep 1.0
reboot
