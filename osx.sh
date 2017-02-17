#!/bin/bash

# Make the dock animation instantaneous
defaults write com.apple.dock autohide-time-modifier -float 0.15; killall Dock
