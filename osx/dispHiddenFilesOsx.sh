#!/bin/bash

# Display hidden files in mac, need to restart finder after launch (cmd+alt+esc)

# Input arg are true/false or 1/0 YES/NO

# Old OSX
defaults write com.apple.finder AppleShowAllFiles 1

# New OSX

defaults write com.apple.finder AppleShowAllFiles YES