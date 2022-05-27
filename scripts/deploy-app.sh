#!/bin/sh

echo
echo "------------------------------------------------"
echo "Setup environment"
echo "------------------------------------------------"
echo

# Update the repository
echo
echo "> Updating the repository"
echo
apt-get update -y

# Get CF CLI API endpoint
echo
echo "> Checking CF CLI API endpoint"
echo
cf api

# Show current directory
echo
echo "> Showing current directory"
echo
ls -ltr