#!/bin/bash

DIR=$1

# Check if directory is empty
[ -z "`ls -A $DIR`" ]  && { echo "directory $DIR is empty !" && exit 2; }

