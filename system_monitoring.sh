#!/bin/bash

## Prints a header for the report
echo "================== System Health Report=================="

# Displays the current date and time using the `date` command
echo " Date & Time: $(date)"
#Define the email address where you want to receive alerts.
EMAIL_ADDRESS="jaf.bakare@gmail.com"
# Define log file for daily health check
LOG_FILE="/var/log/system_monitoring.log"
echo "Hostname : $(hostname)"

# Prints a line for readability
echo "============================================================="
# Shows how long the system has been running
echo "--- Uptime ---"
uptime -p
# Prints a line for readability
echo "==============================================================="
#Define variables for the system resources you want to monitor.
CPU_THRESHOLD=88
MEMORY_THRESHOLD=95 
echo "================================================================"
# line for spacing

echo "--- CPU Usage ---"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " $2 + $4 "%"}'
# Runs 'top' in batch mode for 1 iteration (-bn1).
#top -bn1 is a command used to retrieve a single snapshot of system processes and resource usage in a non-interactive, batch mode.
#The top (table of processes) command shows a dynamic, real-time view of running processes and kernel-managed tasks in Linux
# Filters the line containing CPU usage with grep
# Uses awk to sum user CPU (%) ($2) and system CPU (%) ($4) and prints it
echo "================================================================"
# line for spacing

echo "--- Memory Usage ---"
free -h | awk '/Mem:/ {print "Used: "$3", Free: "$4", Total: "$2}'
# Shows memory usage in human-readable format (-h)
# Extracts the line starting with "Mem:"
# Prints used, free, and total memory columns

echo "================================================================"
#line for spacing

echo "--- Disk Usage (root partition) ---"
df -h / | awk 'NR==2 {print "Used: "$3", Available: "$4", Total: "$2}'
# Shows disk usage for root partition '/'
# Uses 'df -h' for human-readable output
# Prints used, available, and total space from the second line of output

echo "================================================================"
# line for spacing
