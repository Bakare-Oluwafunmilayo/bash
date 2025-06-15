#!/bin/bash

# Check if filename argument is given
if [ $# -eq 0 ]; then #Check if no argument was passed ($# is argument count).
  echo "Usage: $0 filename" #Prints usage info ($0 is the script name).
  exit 1 #Exits the script with error code 1 (indicates improper usage
fi

FILE="$1" #Stores the first argument (filename) in variable FILE

# Check if file exists
if [ -e "$FILE" ]; then
  echo "File '$FILE' exists." #Prints confirmation that the file exists

  # Check readability
  if [ -r "$FILE" ]; then
    echo "File is readable."
  else
    echo "File is NOT readable."
  fi

  # Check writability
  if [ -w "$FILE" ]; then
    echo "File is writable."
  else
    echo "File is NOT writable."
  fi

  # Check executability
  if [ -x "$FILE" ]; then
    echo "File is executable."
  else
    echo "File is NOT executable."
  fi

else
  echo "File '$FILE' does not exist."
fi
