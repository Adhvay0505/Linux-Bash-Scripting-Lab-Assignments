#!/bin/bash

echo "Enter network range (e.g., 192.168.1.0/24):"
read network

echo "Scanning network: $network"
echo "--------------------------------"

nmap -T4 -sn "$network" > scan_result.txt

echo "Active devices in the network:"
ips=$(grep "Nmap scan report" scan_result.txt | awk -F'[()]' '{print $2}')

echo "$ips"

echo "--------------------------------"
echo "Detailed scan of active hosts:"

for ip in $ips; do
    echo "Scanning $ip..."
    nmap -T4 -F "$ip"
done
