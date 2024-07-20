# Write a shell script to find the total space in /home and also print the free space ?


#!/bin/bash
total=$(df -h /home/ | awk 'NR==2 {print $2}')
echo "Total space in home folder::$total"

fs=$(df -h /home/ | awk 'NR==2 {print $4}')
echo "Free space available::$fs"
