#!/bin/bash

# Get the directory to back up from the first argument
DIR=$1

# Check if the argument is provided and the directory exists
if [[ -z "$DIR" || ! -d "$DIR" ]]; then
  echo "Usage: $0 <directory-to-backup>"
  exit 1
fi

# Create a timestamp (format: YYYYMMDD_HHMMSS)
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Get the base name of the directory (just the folder name)
BASENAME=$(basename "$DIR")

# Define the output file name
BACKUP_FILE="${BASENAME}_backup_$TIMESTAMP.tar.gz"

# Compress the directory into a .tar.gz file
tar -czf "$BACKUP_FILE" -C "$(dirname "$DIR")" "$BASENAME"

# Print confirmation
echo "Backup created: $BACKUP_FILE"
