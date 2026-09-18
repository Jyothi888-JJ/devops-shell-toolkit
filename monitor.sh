#!/bin/bash

server="YOUR_SERVER_IP"
service="devops-app"
log_file="monitor.log"

status=$(ssh devops@$server "systemctl is-active $service")

if [ "$status" = "active" ]; then
    echo "$(date) - $service is running fine" >> $log_file
else
    echo "$(date) - $service is down. Restarting..." >> $log_file

    ssh devops@$server "sudo systemctl restart $service"

    sleep 5

    echo "$(date) - Restart attempt completed" >> $log_file
fi
