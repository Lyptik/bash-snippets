#!/bin/bash

# This script append the current date to the current version in the src/version.h file

[ "$1" = "-h" ] || [ "$1" = "--help" ] || [ $# -gt 0 ] && { echo "Usage : $0" && exit 1; }

# Error out
set -e

# Detect and save paths
ORIG_PATH=`pwd`
cd `dirname $0`
SCRIPT_PATH=`pwd`
cd $ORIG_PATH

ROOT_DIR=$SCRIPT_PATH/..

# Appending date just before version i.e. 2015-03-02_v0.2
VERSION_DATE=`date +%Y-%m-%d`

# Magic sed line
sed -i "s/NUM_VERSION \"/NUM_VERSION \""$VERSION_DATE"_/" "$ROOT_DIR/src/version.h"

echo "Done."
