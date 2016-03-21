#!/bin/sh

# This script is an example of a while loop saying "you fuck my wife" if triggered on mac (particularly funny on a french mac)

# Uncomment next line to enable debug output
#set -x

[ "$1" = "-h" ] || [ "$1" = "--help" ] || [ $# != 0 ] && { echo "Usage : $0"; exit 1; }

x=1
while [ $x -le 5 ]
do
  say "You fuck my wife"
  x=$(( $x + 1 ))
done

