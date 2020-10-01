---
title: Mac OS Catalina X ZSH Shell
date: 2019-12-03 22:02:12
updated:
tags: macos, zsh
---

# Intro
With Mac OS Catalina, Apple use ZSH as default shell, but it only apply to newly created account. For existing user accounts, it is required to upgrade it manually

# Change the Default shell to ZSH
Execute following command to change the default shell
```
chsh -s /bin/zsh
```

# Install oh-my-zsh
oh-my-zsh is a open source, community-driven framework for managing zsh configuration.
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
