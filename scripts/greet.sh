#!/usr/bin/env bash

if [ -z "$1" ]; then
echo "Usage: $0 <name>"
exit 1
else
echo "Hello, $1!"
exit 0
fi
