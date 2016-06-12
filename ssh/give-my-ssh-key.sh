#!/bin/sh

# Prerequisite :

# ssh-keygen -t rsa

[ -f ~/.ssh/id_rsa.pub ] && 
mkdir -p .ssh && cat ~/.ssh/id_rsa.pub | ssh user@hostname 'cat >> .ssh/authorized_keys'

[ ! -f ~~/.ssh/id_rsa.pub ] && echo "You seem to have no ssh key, you should do this : ssh-keygen -t rsa"
