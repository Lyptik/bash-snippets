#!/bin/bash

# This displays the size of all directory inside the current directory

[ "$1" = "-h" ] || [ "$1" = "--help" ] || [ $# -gt 0 ] && { echo "Usage : $0" && exit 1; }

# Error out
set -e

du -d 1 -h | sort -n

echo "Done."
