#!/bin/bash
diskusage =$(df -ht | grep -v Filesystem | awk '{print $6f}' | cut -d "%" -f1)
echo "disk usage of the system is : $diskusage"


