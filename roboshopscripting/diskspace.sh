#!/bin/bash
diskusage =$(df -hT | awk '{print $6F}' | cut -d "%" -f1)
echo "disk usage of the system is : $diskusage"


