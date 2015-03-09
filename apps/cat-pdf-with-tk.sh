#!/bin/sh

# Concatenate pdf using tk

type pdftk >/dev/null 2>&1 || { echo "This script requires pdftk to be installed ! Exiting..." >&2; exit 1; }

# Generate output filename

OUT_FILE="out_`date +"%d-%m-%yT%H_%M_%S"`.pdf"

pdftk *.pdf cat output $OUT_FILE &&
echo "$OUT_FILE was generated sucessfully !"
