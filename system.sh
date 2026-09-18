#!/bin/bash

echo "Starting system health check"

echo "Check date"
date

echo "Check disk space"
df -h

echo "Check memory"
free -m
