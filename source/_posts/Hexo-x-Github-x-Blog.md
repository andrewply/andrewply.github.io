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
