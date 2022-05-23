#!/bin/sh
echo
echo "------------------------------------------------"
echo "Creating a build"
echo "------------------------------------------------"
echo

ls -l

echo
echo "------------------------------------------------"
echo "Installing JDK and JRE in order to run Java applications and applets"
echo "------------------------------------------------"
echo

apt install default-jdk
java --version

echo
echo "------------------------------------------------"
echo "Change directory and create build"
echo "------------------------------------------------"
echo

cd testotester-source-code/testotester-server
./mvnw clean package -Dmaven.test.skip=true