---
title: Git Bash Display TortoiseGitPlink Fatal Error
date: 2020-10-01 20:19:05
updated:
tags: git, tortoisegit
---

# Intro
Git bash display fatal error on clone and push project in bash. However, when trying `ssh -T git@githut.com` will return access successful, that means the SSH configuration is correct

{% asset_img image1.png This is an image %}

# Solution
This is due to the default ssh client is overwritted by tortoisegit. There are two methods to solve
## Method 1
- go to tortoisegit -> setting -> network. Change the default ssh client from tortoisegitplink to ssh

## Method 2
- change the enviornment variable `GIT_SSH` 