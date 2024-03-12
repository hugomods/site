---
title: Has ToC
linkTitle: Has ToC
description: 表示當前頁是否具有目錄的函數。
date: 2024-03-07T20:12:52+08:00
nav_icon:
  vendor: bs
  name: list-ul
categories:
  - 文檔
tags:
  - ToC
  - 目錄
---

## 背景

當不存在目錄時，`.TableOfContents` 並不總是空字符串，其可能為 `<nav id="TableOfContents"></nav>`，而該函數正是用於處理這種情況。

## 用法

該函數接收**頁面**參數作為上下文，然後返回一個布爾值表示給定的頁面是否具有目錄。

{{< page-resource-content "codes/usage" >}}
