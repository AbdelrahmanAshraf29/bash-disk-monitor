#!/bin/bash

THRESHOLD=80

EMAIL="abdo29ashraf@gmail.com"

check_disk_usage(){
    USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

    if [ "$USAGE" -gt "$THRESHOLD" ]; then
        echo "Disk space usage is above $THRESHOLD%. Current usage: $USAGE%" 
    fi
}

check_disk_usage
