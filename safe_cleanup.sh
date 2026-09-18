#!/bin/bash

server="YOUR_SERVER_IP"
target="/home/devops/test_data"
log_file="cleanup.log"

if [ -z "$target" ]; then
    echo "Error: target is empty. Exiting script" | tee -a "$log_file"
    exit 1
fi

if [[ "$target" != /home/devops/* ]]; then
    echo "Error: target path is not permitted" | tee -a "$log_file"
    exit 1
fi

echo "Cleaning up directory: $target"

ssh devops@$server "rm -rf $target/*"
