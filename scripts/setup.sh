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

# Install cf cli
echo
echo "# Installing CF CLI"
echo
wget "https://packages.cloudfoundry.org/stable?release=debian64&version=6.40.1&source=github-rel" -O cf
dpkg -i cf