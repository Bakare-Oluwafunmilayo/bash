#!/bin/bash

# Create the main project directory
mkdir -p project
# Create subdirectories inside project
mkdir -p project/src
mkdir -p project/bin
mkdir -p project/logs
mkdir -p project/docs
echo "Directory structure created:"
tree project

# Create empty files inside src/
touch project/src/main.sh
touch project/src/config.sh
touch project/src/utils.sh
# Confirm creation
echo "Created the following files in project/src/:"
ls -l project/src/

mv project/src/main.sh project/bin/

# Ensure the logs directory exists
mkdir -p project/logs

# Set permissions so only the owner has full access
chmod 700 project/logs

echo "Permissions set to 700 for project/logs (owner: rwx, group: -, others: -)"


