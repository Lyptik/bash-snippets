#!/bin/sh

# This script checks if you have root rights 

[ `whoami` != "root" ] && { echo "You need to be root to execute this script ! " &&  exit 1; }
