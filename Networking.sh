#!/bin/bash

# File containing the list of websites
WEBSITE_LIST="websites.txt"

# Output log file
LOG_FILE="connectivity_log.txt"

# Check if website list file exists
if [[ ! -f "$WEBSITE_LIST" ]]; then
  echo "Website list file '$WEBSITE_LIST' not found."
  exit 1
fi

# Clear previous log
> "$LOG_FILE"

# Check each website
while IFS= read -r website; do
  if [[ -z "$website" ]]; then
    continue  # Skip empty lines
  fi

  if ping -c 1 -W 2 "$website" &> /dev/null; then
    echo "$(date): $website is reachable." >> "$LOG_FILE"
  else
    echo "$(date): $website is NOT reachable." >> "$LOG_FILE"
  fi
done < "$WEBSITE_LIST"

echo "Connectivity check complete. Results saved to $LOG_FILE."
