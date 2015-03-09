#!/bin/bash

WORD=$1
FILE=$2

grep_output=`grep -x $1 $2`

if [ "$grep_output" == "" ]; then
    echo "not found";
else
    echo "found";
fi
