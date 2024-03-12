---
title: "图片对齐"
linkTitle: "对齐"
description: 学习如何将图片进行居中对齐、左侧浮动和右侧浮动。
nav_weight: 1
nav_icon:
  vendor: bs
  name: text-left
date: 2023-03-24T22:13:36+08:00
categories:
  - 文档
tags:
  - Markdown
  - 浮动
  - 对齐
  - 左侧浮动
  - 右侧浮动
authors:
  - HugoMods
---

## URL 片段

URL 片段 ID 用于图片对齐，其中 `#center`、`#float-start` 和 `#float-end` 分别表示居中对齐、左侧浮动和右侧浮动。

## 图片居中对齐

添加 `#center` 片段 ID 以使图片居中对齐。

![Center](/images/great-wall.jpg?crop=200x120#center "![Center](/images/great-wall.jpg#center)")

## 图片左侧浮动

添加 `#float-start` 片段 ID 以使图片左侧浮动，你可能需要[清除浮动](https://developer.mozilla.org/en-US/docs/Web/CSS/clear)，以避免其破坏布局，对于 Bootstrap 用户，你可以用 [bs/clearfix](https://bootstrap.hugomods.com/docs/clearfix/) 短代码包裹浮动内容。

{{< page-resource-content "data/example-float-start" >}}

## 图片右侧浮动

类似地，我们可以通过添加 `#float-end`  片段 ID 以使图片右侧浮动。

{{< page-resource-content "data/example-float-end" >}}
