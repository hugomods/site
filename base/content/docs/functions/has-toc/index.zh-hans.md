---
title: Has ToC
linkTitle: Has ToC
description: 表示当前页是否具有目录的函数。
date: 2024-03-07T20:12:52+08:00
nav_icon:
  vendor: bs
  name: list-ul
categories:
  - 文档
tags:
  - ToC
  - 目录
---

## 背景

当不存在目录时，`.TableOfContents` 并不总是空字符串，其可能为 `<nav id="TableOfContents"></nav>`，而该函数正是用于处理这种情况。

## 用法

该函数接收**页面**参数作为上下文，然后返回一个布尔值表示给定的页面是否具有目录。

{{< page-resource-content "codes/usage" >}}
