#!/bin/bash

# moger CLI installation


echo "Starting the moger CLI installation"
echo

echo "-- Checking if user has sudo access"
sudo -v
if [ $? -ne 0 ]; then
    echo "Current user does not have sudo access"
    exit 1
fi
echo

echo "-- Checking if docker is installed"
docker --version
if [ $? -ne 0 ]; then
    echo "The docker CLI is not installed"
    exit 1
fi
echo


set -e

echo "-- Installing moger CLI wrapper"
sudo cp -f bin/moger.sh /usr/local/bin/moger
sudo chmod 755 /usr/local/bin/moger
echo

echo "-- Finished installing moger CLI" 