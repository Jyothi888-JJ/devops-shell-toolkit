#!/bin/bash

server="YOUR_SERVER_IP"
threshold=90

usage=$(ssh devops@$server "df -h / | tail -1 | awk '{print \$5}' | sed 's/%//'")

echo "Disk usage: ${usage}%"

if [ "$usage" -gt "$threshold" ]; then
    echo "WARNING: Disk usage on server is above ${threshold}%"
else
    echo "Disk usage on server is within acceptable limits"
fi
