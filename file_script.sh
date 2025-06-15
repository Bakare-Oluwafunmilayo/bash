#!/bin/bash

file=$1  # Assigns the first argument passed to the script ($1) to a variable called
 
if [ -e "$file" ]; then #Checks if the file exists using the -e test.
  echo "$file exists." #Prints a confirmation that the file exists
  [ -r "$file" ] && echo "Readable" || echo "Not readable" #If the file is readable, prints "Readable", otherwise "Not readable".
  [ -w "$file" ] && echo "Writable" || echo "Not writable" #If the file is writable, prints "Writable", otherwise "Not writable
  [ -x "$file" ] && echo "Executable" || echo "Not executable" #If the file is executable, prints "Executable", otherwise "Not executable"
else # If the file does not exist..
  echo "$file does not exist."
fi #Ends the if block
