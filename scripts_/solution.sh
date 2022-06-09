#!/usr/bin/env bash

LOG_FILE="$1"

var1="awk '{print ($9==500 ? 1 : 0)}' $LOG_FILE | tail -1"

if [ $var1 == 0 ]; then
    sendmail alert@project.com < echo "HTTP 500 on /\file/\one"
fi
