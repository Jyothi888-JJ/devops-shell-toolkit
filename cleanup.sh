#!/bin/bash

server="YOUR_SERVER_IP"

echo "Checking large files on server..."

ssh devops@$server "find / -type f -size +200M 2>/dev/null"

echo "Check completed."
