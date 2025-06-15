#!/bin/bash

# Ensure the script is run as root
if [[ "$EUID" -ne 0 ]]; then
  echo "Please run this script as root (use sudo)."
  exit 1
fi

echo "--------------------------------------------"
echo "🔍 Checking for system updates..."
apt update

echo "--------------------------------------------"
echo "⬇️ Downloading available updates..."
apt upgrade -y

echo "--------------------------------------------"
echo "✅ System update complete."
