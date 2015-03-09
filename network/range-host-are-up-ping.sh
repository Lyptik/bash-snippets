#!/bin/bash

# Check if a range of computer are up

for ip in 192.168.1.{1..10}; do  # for loop and the {} operator
    ping -c 1 -t 1 192.168.1.1 > /dev/null 2> /dev/null  # ping and discard output
    if [ $? -eq 0 ]; then  # check the exit code
        echo "${ip} is up" # display the output
        # you could send this to a log file by using the >>pinglog.txt redirect
    else
        echo "${ip} is down"
    fi
done


