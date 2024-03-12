---
title: "为什么你需要指定 Hugo 的 BaseURL"
description: 为什么 Hugo 的 BaseURL 如此重要？
date: 2023-10-14T19:56:11+08:00
featured: false
pinned: false
draft: false
series:
  - 教程
categories:
  - Hugo
tags:
  - BaseURL
authors:
  - HugoMods
images:
---

相信有不少人由于忘记设置 BaseURL 而遇到各种各样的问题，今天，我们来谈论一下 Hugo 的 BaseURL，以及其可能会引起哪些已知问题。

### 不使用 `BaseURL` 的已知问题

### 在进行社交分享时无法预览图片

如果没有设置正确的 `BaseURL`，在进行社交分享时将无法预览图片，这是因为社交媒体平台无法解析非绝对 URL 的图片。

#### 搜索引擎无法索引网站地图

如果没有`BaseURL`，网站地图的 URL 都是相对的，这将导致搜索引擎无法索引您的网页。

### 结论

正如上文所述，`BaseURL` 非常重要，其用于为网站资源（如网站地图、图片等）生成绝对URL，以便其他服务和平台正确地解析。
