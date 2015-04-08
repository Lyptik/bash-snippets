#!/bin/sh

# this script show how to do a sudo command without asking for password inside a bash script

# beware ! it's highly insecure !

cd /where_you_want_to_execute_your_program
echo yourPassword | sudo -S ./programThatNeedSudo

