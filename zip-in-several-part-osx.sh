#!/bin/bash

# This script zip the content of a folder in several parts only using zip provided with osx (unzip with theUnarchiver for example)

[ "$1" = "-h" ] || [ "$1" = "--help" ] || [ $# -ne 3 ] && { echo "Usage : $0 partSize archiveName.zip folderName" && echo "partSize default in MB or k for KB, g for GB, t for TB " && exit 1; }

# Error out
set -e

# Detect and save paths
ORIG_PATH=`pwd`
cd `dirname $0`
SCRIPT_PATH=`pwd`
cd $ORIG_PATH

# $1 archiveName.zip
# $2 folderName containing the files to encode
# $3 max size of one part (default in MB) or use k for KB, g for GB, and t for TB
# Unzip with theUnarcher for example

zip -r -s $1 $2 $3
