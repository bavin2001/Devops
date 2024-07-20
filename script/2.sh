# Write a shell script to monitor the CPU usage.


#!/bin/bash
echo "Monitoring CPU usage..."

	cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $8 }')
	cpu_usage=$(bc <<< "scale=1; 100 - $cpu")
    echo "CPU Usage: $cpu_usage%"
    sleep 1 

