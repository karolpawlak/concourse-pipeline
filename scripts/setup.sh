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

# Environmental variables
echo
echo "# Showing current environmental variables"
echo
env

# Get CF CLI API endpoint
echo
echo "# Checking CF CLI API endpoint"
echo
cf api