#!/bin/bash

if [ -z '$1' ]; then
echo "Usage: $0 <service-name>"
exit 1
fi

if systemctl is-active --quiet "$1"; then
echo "Service '$1' is active"
exit 0

else
echo "Service '$1' is not active"
exit 1
fi
