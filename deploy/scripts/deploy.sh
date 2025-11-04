#!/bin/bash
# Exit immediately if a command exits with a non-zero status
set -e

# Update package index
sudo apt update -y

# Install dependencies for Jenkins
sudo apt install -y fontconfig openjdk-21-jre wget

# Create the keyrings directory if it doesn’t exist
sudo mkdir -p /etc/apt/keyrings

# Download and store the Jenkins key
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Add the Jenkins repository to the system sources
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package index again after adding Jenkins repo
sudo apt update -y

# Install Jenkins
sudo apt install -y jenkins

# Start and enable Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Optional: Check Jenkins status
sudo systemctl status jenkins

# Print success message
echo "Jenkins installation completed successfully!"
echo "Access Jenkins at: http://<your-server-ip>:8080"