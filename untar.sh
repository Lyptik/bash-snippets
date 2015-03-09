#!/bin/sh

# This script is a template asking only one argument and testing if the file exists

[ "$1" = "-h" ] || [ "$1" = "--help" ] || [ $# != 1 ] && { echo "Usage : $0 inputfile"; exit 1; }

[ ! -f $1 ] &&  echo "File does not exist ! " && exit

echo "Is it a tar.gz ? (y/n)"
read answer
if [ $answer = "y" ] && echo "So you do tar -zxvf $1" && tar zxvf $1 && exit

echo "Is it a tar.bz2 ? (y/n)"
read answer
if [ $answer = "y" ] && echo "So you do tar -jxvf $1" && tar jxvf $1 && exit

echo "Is it a zip ? (y/n)"
read answer
if [ $answer = "y" ] && echo "So you do unzip $1" && unzip $1 && exit

echo "hmmm I do not know this type, be carefull whith this thing son ! "
exit 1;

