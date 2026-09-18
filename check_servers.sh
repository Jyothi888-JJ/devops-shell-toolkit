#!/bin/bash

servers="192.168.1.1 192.168.1.2 192.168.1.3"

for server in $servers; do
    echo "Checking server $server"
    ssh devops@$server "df -h"
done
