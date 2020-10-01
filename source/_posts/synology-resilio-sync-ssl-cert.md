---
title: Synology Resilio Sync SSL Cert
date: 2020-01-30 21:05:12
updated:
tags: synology, resilio, ssl
---
# Intro
Configure the Resilio Sync SSL Cert in Synology

# Install Resilio Sync
Download related package in Resilio Sync website and install the software

# Configure SSL Cert
1. ssh to synology
1. edit the configure file
    `/usr/local/resiliosync/var/sync.conf`
1. add `ssl_certificate` and `ssl_private_key` fields after `force_http`
    
    ```
    "force_https": true,
    "ssl_certificate": "/path/to/cert.pem",
    "ssl_private_key": "/path/to/privkey.pem",
            
    ```
1. restart resilio sync

* in vi, `dd` to delete line
* double check the permission and the path if fail