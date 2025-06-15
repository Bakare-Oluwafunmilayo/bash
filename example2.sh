#!/bin/bash
#create a simple program that collect the following details: first-name, last-name, age
# and print a complete statement with it

#input: first_name, last_name, age
read -p "Enter your first_name:" first_name #-p is for prompting
read -p "Enter your last name:" last_name
read -p "Enter your age:" age
#read -p -t 5 "Enter a secret word:" #-t is for time bound timimg
read -t 5 -s -p"Enter a password:" password #-s will make it invisible
#output: statement
echo "${last_name} ${first_name} is ${age} years old"