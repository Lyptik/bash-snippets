#!/bin/sh

# This script is a template asking you if you want to continue

# Uncomment next line to enable debug output
#set -x

echo "Do you want to continue ? (y/n)"
read answer
[ $answer != "y" ] && { echo "Exiting..."; exit; }
echo "Ok, let's go !"
