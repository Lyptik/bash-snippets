#!/bin/sh

#set -x # sh debug output

usage()
{
cat << EOF
usage: $0 [-v] [-r HOSTNAME] [-f FILE]

This script execute connects to hostname using FILE 

OPTIONS:
   -h      Show this message
   -r      Hostname
   -f      Config file (default: defaultFile.cfg)
   -v      Verbose
EOF
}

# No arg check
[ $# = 0 ] && { usage >&2; exit 1; }

# Default values
HOSTNAME=""
VERBOSE=0
FILE=defaultFile.cfg

# Options parsing
while getopts “:hvr:f:” OPTION
do
     case $OPTION in

         h)
             usage
             exit
             ;;
         r)  
             HOSTNAME=$OPTARG
	           ;;  
         f)
	           [ ! -f $OPTARG ] &&
             {
		           echo "$OPTARG does not exist !" >&2;
		           exit 1;
		         }
	           FILE=$OPTARG
	           ;;
	       v)
	           VERBOSE=1
	           ;;
	       ?)
             exit 1
	           ;;
     esac
done

[ -z "$HOSTNAME" ] && { echo "Please enter Hostname:" && read HOSTNAME; }

# Your script here

[ $? -eq 0 ] && echo "Done!"
#type beep >/dev/null 2>&1 && beep
