#!/bin/sh

# script that prints the last ip.Adress number i.e. 10 in 192.168.0.10

echo "`/sbin/ifconfig | grep "Bcast" | awk -F . '{print $4}' | awk -F " " '{print $1}'`"
