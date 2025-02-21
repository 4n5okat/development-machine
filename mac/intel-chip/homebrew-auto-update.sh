#!/bin/zsh
cp ./mac/plist/homebrew/intel-chip/localhost.homebrew-auto-update.plist ~/Library/LaunchAgents/
plutil -lint ~/Library/LaunchAgents/localhost.homebrew-auto-update.plist
launchctl bootstrap gui/$(id -u) ~/Library/LaunchAgents/localhost.homebrew-auto-update.plist
launchctl list | grep homebrew-auto-update
