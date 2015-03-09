#!/bin/sh

# This script can be used to delete the "argument list too long" case 

# Uncomment next line to enable debug output
#set -x

[ "$1" = "-h" ] || [ "$1" = "--help" ] || [ $# != 0 ] && { echo "Usage : $0"; exit 1; }

FOLDER=.

echo "Deleting every file within the current folder ..."
find $FOLDER -type f -delete
echo "Done!"
#beep
