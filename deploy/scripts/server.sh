#!/bin/bash
# Exit immediately if a command exits with a non-zero status
set -e

# Update the package list
sudo apt update -y

# Install Apache2 web server
sudo apt install -y apache2

# Start the Apache2 service
sudo systemctl start apache2

# Enable Apache2 to start on boot
sudo systemctl enable apache2

# Optional: Display Apache status
sudo systemctl status apache2 --no-pager
