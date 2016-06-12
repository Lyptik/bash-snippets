#!/bin/sh

# dd from $1 to $2
# $1 : /dev/disk1 (output) OSX example
# $2 : your path.img (input)

echo "Do you really want to dd $1 to $2.gz ? (y/n)" &&
read key &&
[ "$key" = "y" ] &&
sudo dd if=$1 bs=1m | gzip -c > $2.gz &&
echo "Done."
