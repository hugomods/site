---
title: "如何使用 Hugo 模块"
description: "在使用 Hugo 模块前，你需要做一些准备工作。"
date: 2023-03-26T01:03:47+08:00
draft: false
featured: true
pinned: false
series:
  - 教程
categories:
  - 模块
tags:
authors:
  - HugoMods
images:
---

## 安装 Go

详情请参阅 [download and install Go](https://golang.google.cn/doc/install)。

## 初始化

我们首先需要通过 `hugo mod init MODULE_PATH` 将你的网站或主题初始化为模块。

`MODULE_PATH` 是网站或主题的标识符，其通常为不带协议的仓库地址，比如：

{{< page-resource-content "codes/initialization" >}}

{{% bs/alert danger %}}
请注意 `MODULE_PATH` **必须是唯一的**，否则将会与其他模块产生冲突。
{{% /bs/alert %}}

## 导入模块

接着你就可以导入任意你需要的模块了，举个例子：

{{< page-resource-content "codes/import-modules" >}}
