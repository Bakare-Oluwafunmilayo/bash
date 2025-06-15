#!/bin/bash
#on
set -n
#print the current user and date logged into a VM

#custom variables
course="Devops"
School="Codar Tech Africa"
declare -i age=7
 
echo " The current user logged in is: $(whoami) at $(date)"
echo " I am learning ${course} at ${School}. I am ${age} years old \n"

#end debug mode
set +n