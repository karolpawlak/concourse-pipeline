#!/bin/sh

# Environmental variables
echo
echo "------------------------------------------------"
echo "Showing current environmental variables"
echo "------------------------------------------------"
echo
env

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

echo
echo "> Installing JDK"
echo

apt install -y openjdk-17-jdk

echo
echo "> Java version"
echo
java --version

echo
echo "------------------------------------------------"
echo "Creating a build"
echo "------------------------------------------------"
echo

cd testotester-source-code/testotester-server
./mvnw clean package -Dmaven.test.skip=true

cd ../
cp -r testotester-server app-build