#!/bin/bash
echo "bash start"
ps -eo pid,time,user | grep "zlian030" | grep -v " 00:00:" | grep -v " 00:01:" | awk -F" " '{system("kill -9 " $1)}'
