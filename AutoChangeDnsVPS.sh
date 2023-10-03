#!/bin/bash
============================
# Create by t.me/PR_Aiman
# Copyright©Beginner
============================

# Remove old dns
rm -f /etc/resolv.conf

# Add new dns
echo "nameserver 1.1.1.1" >> /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf

# Add Auto Change At Crontab
echo "10 0 * * * root AutoChangeDnsVPS" >> /etc/crontab

# Reboot
echo ""
echo " Script will reboot "
echo ""
sleep 1.0
reboot
