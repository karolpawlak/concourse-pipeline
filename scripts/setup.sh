#!/bin/sh
echo
echo "------------------------------------------------"
echo "Setup environment"
echo "------------------------------------------------"
echo

# Update the repository
echo
echo "# Updating the repository"
echo
apt-get update -y

# Check for CF CLI
cf help -a

# Environmental variables
env