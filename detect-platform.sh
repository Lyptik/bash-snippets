#!/bin/sh

# Detect on which platform you are to do multiplatform script

case `uname` in

  Darwin)
	echo "You are on a mac -> Darwin"
	;;

  Linux)
	echo "You are on linux"
	;;
esac
