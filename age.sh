#!/bin/bash

#./vagrant

#input: age, filename
read -p "Enter your age:" age
DIR="/vagrant/secure.txt"

#process: give access to user to be able to read the content of a script/file
#check if the age of the user is above or equal 
if [[ $age -ge 18 ]] #-ge means equal to or greater than 18
then
     #read the file
     chmod +r $DIR
     cat $DIR

else
    echo "You are restricted to view file"
    
fi     
#output: display the file