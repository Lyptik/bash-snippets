#!/bin/sh

# Beware ! this has not fully been tested

### BEGIN INIT INFO
# Provides:          repairEth
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Checks eth change and repair
# Description:       Checks if Mac address is bound to eth0. If not change it to eth0 
### END INIT INFO

# This scripts gives cloning capability to system by checking at each startup eth and mac address

RULES_FILE=/etc/udev/rules.d/70-persistent-net.rules

if [ ! -f $RULES_FILE ]; then
	udevadm trigger --action=add &&
	exit
fi

MAC_ADDRESS=`ifconfig | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'`

CORRECT_ETH_PRESENCE="`cat /etc/udev/rules.d/70-persistent-net.rules | grep "$MAC_ADDRESS" | grep "eth0"`"

if [ -z "$CORRECT_ETH_PRESENCE" ]; then
	echo "$MAC_ADDRESS is not linked to eth0 !" >&2
	echo "Regenerating $RULES_FILE" >&2
	mv $RULES_FILE $RULES_FILE\.bak
	udevadm trigger --action=add
	
	# Redo test because it does recreate file with still ethX incremented (Acting weird ?)
	# HOTFIX
	CORRECT_ETH_PRESENCE="`cat /etc/udev/rules.d/70-persistent-net.rules | grep "$MAC_ADDRESS" | grep "eth0"`"
	if [ -z "$CORRECT_ETH_PRESENCE" ]; then
        	
		# If did indeed act like a weirdo
		echo "$MAC_ADDRESS is still not linked to eth0 !" >&2
		echo "Changing $RULES_FILE" >&2
		sed -i 's/eth[1-99]/eth0' $RULES_FILE
		service networking restart
	fi	
fi

