#create a program that displays the following details about your system
#username, hostname, number of users, free memory and disk size

#!/bin/bash

# Get current username
username=$(whoami)

# Get system hostname
hostname=$(hostname)

# Get number of currently logged-in users
user_count=$(who | wc -l)

# Get free memory in MB
free_mem=$(free -m | awk '/Mem:/ { print $4 " MB" }')

# Get disk usage summary
disk_usage=$(df -h / | awk 'NR==2 {print "Used: " $3 ", Available: " $4}')

# Display the information
echo "System Information:"
echo "--------------------"
echo "Username      : $username"
echo "Hostname      : $hostname"
echo "Users Logged In: $user_count"
echo "Free Memory   : $free_mem"
echo "Disk Usage    : $disk_usage"


#vagrant@dev-linux:/vagrant$  free -h
             total       used       free     shared    buffers     cached
#Mem:          2.0G       241M       1.7G       364K        13M       104M
#-/+ buffers/cache:       123M       1.8G
#Swap:           0B         0B         0B
#vagrant@dev-linux:/vagrant$ free -h | grep "Mem"
#Mem:          2.0G       241M       1.7G       364K        13M       104M
#vagrant@dev-linux:/vagrant$ free -h | grep "Mem" | awk '{print "Total Memory:", $4}'
#Total Memory: 1.7G
#vagrant@dev-linux:/vagrant$ 
