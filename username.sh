#!/bin/bash

# Check if the input file is provided
if [[ -z "$1" || ! -f "$1" ]]; then
  echo "Usage: $0 <usernames_file>"
  exit 1
fi

# Read each line (username) from the file
while IFS= read -r username; do
  # Skip empty lines
  if [[ -z "$username" ]]; then
    continue
  fi

  # Check if user already exists
  if id "$username" &>/dev/null; then
    echo "User '$username' already exists. Skipping."
  else
    # Create the user
    useradd "$username"
    echo "User '$username' created."
  fi
done < "$1"
