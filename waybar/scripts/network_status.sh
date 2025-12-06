#!/bin/sh

ETH="enp45s0"
WIFI="wlp46s0"

# Check Ethernet first - if link is up, show it
if ip link show "$ETH" 2>/dev/null | grep -q "state UP"; then
    echo "󰈀 Ethernet"
    exit 0
fi

# Check WiFi - if connected, just show "Connected"
if ip link show "$WIFI" 2>/dev/null | grep -q "state UP"; then
    echo " Connected"
    exit 0
fi

# If neither Ethernet nor WiFi is up, check if we have any connection
default_iface=$(ip route | awk '/^default/ {print $5; exit}')
if [ -n "$default_iface" ]; then
    echo " Connected"
else
    echo "睊 Disconnected"
fi