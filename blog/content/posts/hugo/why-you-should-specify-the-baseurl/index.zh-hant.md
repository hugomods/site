---
title: "為什麼你需要指定 Hugo 的 BaseURL"
description: 為什麼 Hugo 的 BaseURL 如此重要？
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

相信有不少人由於忘記設置 BaseURL 而遇到各種各樣的問題，今天，我們來談論一下 Hugo 的 BaseURL，以及其可能會引起哪些已知問題。

### 不使用 `BaseURL` 的已知問題

### 在進行社交分享時無法預覽圖片

如果沒有設置正確的 `BaseURL`，在進行社交分享時將無法預覽圖片，這是因為社交媒體平臺無法解析非絕對 URL 的圖片。

#### 搜索引擎無法索引網站地圖

如果沒有`BaseURL`，網站地圖的 URL 都是相對的，這將導致搜索引擎無法索引您的網頁。

### 結論

正如上文所述，`BaseURL` 非常重要，其用於為網站資源（如網站地圖、圖片等）生成絕對URL，以便其他服務和平臺正確地解析。
