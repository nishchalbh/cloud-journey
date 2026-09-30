#!/bin/bash

if [ -z "$1" ]; then
echo "Usage: $0 <file-path>"
exit 1
fi

if [ ! -e "$1" ]; then
echo "Error: '$1' does not exist"
exit 2
fi

if [ -r "$1" ]; then
echo "File '$1' exists and is readable"
exit 0
else
echo "File '$1' exists but is not readable"
exit 3
fi


