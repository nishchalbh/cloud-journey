#!/usr/bin/env bash

hostname_name=$(hostname)
current_user=$(whoami)
kernel_version=$(uname -r)
uptime_info=$(uptime -p)
memory_info=$(free -h | awk '/^Mem:/ {print $3 " used of " $2}')
disk_usage=$(df -h / | awk 'NR==2 {print $5 " used on root filesystem"}')

echo "===== System Information ====="
echo "Hostname: $hostname_name"
echo "User: $current_user"
echo "Kernel: $kernel_version"
echo "Uptime: $uptime_info"
echo "Memory: $memory_info"
echo "Disk: $disk_usage"
