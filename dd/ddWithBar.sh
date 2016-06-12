#!/bin/sh

# dd from $1 to $2
# $1 : your path.img (input)
# $2 : /dev/disk1 (output) OSX example

echo "Do you really want to dd $1 to $2 ? (y/n)" &&
read key &&
[ "$key" = "y" ] &&
pv -tpreb $1 | sudo dd bs=1m of=$2 &&
echo "Done."

