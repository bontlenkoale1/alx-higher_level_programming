#!/bin/bash
# Bash script that takes in a URL, sends a request to that URL
# and displays the size of the body of the response
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Use curl to send a request and get the size of the response body in bytes
size=$(curl -sI "$1" | grep -i "Content-Length" | awk '{print $2}' | tr -d '\r')

# Display the size of the response body
echo "$size"
