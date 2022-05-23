#!/bin/sh

echo
echo "------------------------------------------------"
echo "Setup environment"
echo "------------------------------------------------"
echo

apt-get update -y

echo
echo "------------------------------------------------"
echo "Installing JDK and JRE in order to run Java applications and applets"
echo "------------------------------------------------"
echo

apt install default-jdk -y
java --version

echo
echo "------------------------------------------------"
echo "Creating a build"
echo "------------------------------------------------"
echo

cd testotester-source-code/testotester-server
./mvnw clean package -Dmaven.test.skip=true