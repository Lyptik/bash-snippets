#!/bin/sh

# Check if a program is installed and display a message

# Tips : don't use which ! (not safe to use on all systems)
# command / type / hash are a good choice

type $1 >/dev/null 2>&1 || { echo >&2 "This script requires $1 to be installed ! Exiting..."; exit 1; }

