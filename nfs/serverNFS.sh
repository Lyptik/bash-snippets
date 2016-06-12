#!/bin/sh

# Set up a nfs server on OSX :

# Configure /etc/exports file like this :

# /Users/theorizcrew/Documents/theorizcrew/extrapolis -network 192.168.0.0 -mask 255.255.255.0

# To check if it works (on the server) :

# sudo nfsd disable && sudo nfsd enable && showmount -e

# Mount the partition on a nfs client :

# sudo mkdir -p /Volumes/extrapolis && sudo mount -t nfs -o resvport,nolocks,locallocks,intr,soft,wsize=32768,rsize=3276 theorizcrew-mbp.local:/Users/theorizcrew/Documents/theorizcrew/extrapolis /Volumes/extrapolis