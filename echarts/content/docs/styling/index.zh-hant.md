---
title: "樣式"
linkTitle: "樣式"
description: 調整圖表樣式以匹配你主題的 UI 設計。
nav_icon:
  vendor: bs
  name: palette
  className: text-primary
date: 2024-03-14T20:11:19+08:00
series:
  - 文檔
categories:
tags:
  - 樣式
  - SCSS
  - CSS
authors:
  - HugoMods
images:
---

## 原理

所有的 ECharts 都有一個類名稱為 `.echarts` 的類名，還有一些用於指示當前狀態的類名：

1. `initializing`：正在初始化圖表。
2. `initialized`：圖表已初始化完成。

## 示例

{{< page-resource-content "codes/style" >}}
