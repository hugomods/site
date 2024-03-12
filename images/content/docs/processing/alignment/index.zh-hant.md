---
title: "圖片對齊"
linkTitle: "對齊"
description: 學習如何將圖片進行居中對齊、左側浮動和右側浮動。
nav_weight: 1
nav_icon:
  vendor: bs
  name: text-left
date: 2023-03-24T22:13:36+08:00
categories:
  - 文檔
tags:
  - Markdown
  - 浮動
  - 對齊
  - 左側浮動
  - 右側浮動
authors:
  - HugoMods
---

## URL 片段

URL 片段 ID 用於圖片對齊，其中 `#center`、`#float-start` 和 `#float-end` 分別表示居中對齊、左側浮動和右側浮動。

## 圖片居中對齊

添加 `#center` 片段 ID 以使圖片居中對齊。

![Center](/images/great-wall.jpg?crop=200x120#center "![Center](/images/great-wall.jpg#center)")

## 圖片左側浮動

添加 `#float-start` 片段 ID 以使圖片左側浮動，你可能需要[清除浮動](https://developer.mozilla.org/en-US/docs/Web/CSS/clear)，以避免其破壞佈局，對於 Bootstrap 用戶，你可以用 [bs/clearfix](https://bootstrap.hugomods.com/docs/clearfix/) 短代碼包裹浮動內容。

{{< page-resource-content "data/example-float-start" >}}

## 圖片右側浮動

類似地，我們可以通過添加 `#float-end`  片段 ID 以使圖片右側浮動。

{{< page-resource-content "data/example-float-end" >}}
