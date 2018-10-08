---
title: 使用 Hexo ＋ Github 建立 Blog
date: 2018-10-06 00:25:01
tags:
---

# 緣
狐狸一直想建立一個屬於自己的窩，找過很多地方、工具，有wordpress、Joomla、Drupal、等等

不是安裝複雜，就是設定繁複。另外還要找一個hosting 放置部署。雖知道，以狐狸這麼市儈和一毛不拔的性格。可以不用付錢的就不會付。但免費多廣告，狐狸又有潔廦，受不了堆亂七八糟的東西。最後發現了github能夠放置靜態網頁，而Hexo提供了一個blog 的框架。最後在一輪向google 大神咨詢後。終於建立了一個小小的窩。狐狸整理這個過程並作為入伙的第一篇筆記

# Github
1. 申請account
1. 建立repository, 名字 `<username>.github.io`
1. 設定custom domain
    * 在DNS 內，加入CNAME，point to `<username>.github.io`
    * 在github repository內 -＞ setting -> 輸入custom domain
    * check "Enforce HTTPS" 

# 設定GIT 和 SSH
1. Open terminal and configure user.name and user.email
    ```
    git config --global user.name "Github username"
    git config --global user.email "Github email"
    ```
1. Generate SSH key
    ``` 
    ssh-keygen -t rsa -C "你的GitHub注册邮箱"
    ```
1. Three files `id_rsa`, `id_rsa.pub`, `known_hosts` will be generated in the `~/.ssh` folder
1. Copy the content in `id_rsa.pub` and paste to GitHub, setting -> SSH and GPG keys -> new ssh keys
1. Test the SSH key, input `ssh git@github.com` in the terminal. the following message will be displayed if the setting is correct
    ```
    Hi xxx! You've successfully authenticated, but GitHub does not provide shell access.
    Connection to github.com closed.
    ```
# 安裝和設定Hexo
1. Install node.js
1. input `npm install -g hexo-cli` in terminal
1. if permission denied, change npm's default directory manually
    * `mkdir ~/.npm-global`
    * `npm config set prefix '~/.npm-global'`
    * `nano ~/.bash_profile`
    * input `export PATH=~/.npm-global/bin:$PATH`
    * restart terminal

# Hexo 相關
* create blog `hexo init blog`
* create a test post `hexo new test_my_site`
* generate blog `hexo g`
* deploy blog in internal testing server `hexo s`
* input `localhost:4000` in chrome for testing the blog

# 部署Hexo 到GitHut
1. install deployer package `npm install hexo-deployer-git --save`
1. open `_config.yml` document
1. find and edit
    ```
    deploy: 
    type: git
    repo: <username>.github.io.git
    branch: master
    ```
1. in terminal
    * `hexo clean`
    * `hexo g`
    * `hexo d`
