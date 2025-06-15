#!/bin/bash

# Get the target directory from the first argument
dir=$1

# Check if a directory was provided and it exists
if [[ -z "$dir" || ! -d "$dir" ]]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# Loop through all files in the directory
for file in "$dir"/*; do
  if [[ -f "$file" ]]; then
    echo "Appending to $file"
    date >> "$file"
  fi
done

echo "Date and time appended to all files in $dir."
