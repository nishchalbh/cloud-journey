#!/usr/bin/env bash

threshold=80
usage=$(df -P / | awk 'NR==2 {gsub("%", "", $5); print $5}')

echo "Root filesysterm usage: $usage%"

if (( usage >= threshold )); then
echo "Warning: Disk usage is above ${threshold}%"
exit 1
else
echo "OK: Disk usage is below ${threshold}%"
exit 0
fi
