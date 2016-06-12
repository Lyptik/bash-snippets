#!/bin/sh

# Prerequisite :

# ssh-keygen -t rsa

[ -f ~/.ssh/id_rsa.pub ] ||
{ echo "You seem to have no ssh key, you should do this : ssh-keygen -t rsa" && exit 1; }

[ -f ~/.ssh/id_rsa.pub ] && 
cat ~/.ssh/id_rsa.pub | ssh station@station.local 'cat >> .ssh/authorized_keys

