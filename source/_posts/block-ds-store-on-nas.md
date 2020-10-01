---
title: Block .DS_Store Files on NAS
date: 2020-08-30 21:30:58
updated: 2020-08-30 21:30:58
tags: synology
---

# Intro
MacOS always write DS_Store files on network share. These files are used by MacOS to store custom attributes but it is useless on non MacOS. So, it is better to clean up these existing DS_Store files and block these files on NAS permanently (Synology).

# Clean existing .DS_Store files
1. Enable SSH and login to NAS
1. `find / -name ".DS_Store" -delete`

# Set VETO files to block .DS_Store on NAS
1. Go to "Control Panel" -> "File Services" -> "Advanced Settings"
1. Check Veto files
1. Input "/.DS_Store/
1. Apply

# Disable Mac to write DS_Store on network share
1. Open terminals
1. `defaults write com.apple.desktopservices DSDontWriteNetworkStores true`