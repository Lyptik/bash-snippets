#!/bin/sh

# Mount the partition on a nfs client (OSX) :

sudo mkdir -p /Volumes/extrapolis && sudo mount -t nfs -o resvport,nolocks,locallocks,intr,soft,wsize=32768,rsize=3276 theorizcrew-mbp.local:/Users/theorizcrew/Documents/theorizcrew/extrapolis /Volumes/extrapolis