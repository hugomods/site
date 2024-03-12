---
title: "如何使用 Hugo 模塊"
description: "在使用 Hugo 模塊前，你需要做一些準備工作。"
date: 2023-03-26T01:03:47+08:00
draft: false
featured: true
pinned: false
series:
  - 教程
categories:
  - 模塊
tags:
authors:
  - HugoMods
images:
---

## 安裝 Go

詳情請參閱 [download and install Go](https://go.dev/doc/install)。

## 初始化

我們首先需要通過 `hugo mod init MODULE_PATH` 將你的網站或主題初始化為模塊。

`MODULE_PATH` 是網站或主題的標識符，其通常為不帶協議的倉庫地址，比如：

{{< page-resource-content "codes/initialization" >}}

{{% bs/alert danger %}}
請注意 `MODULE_PATH` **必須是唯一的**，否則將會與其他模塊產生衝突。
{{% /bs/alert %}}

## 導入模塊

接著你就可以導入任意你需要的模塊了，舉個例子：

{{< page-resource-content "codes/import-modules" >}}
