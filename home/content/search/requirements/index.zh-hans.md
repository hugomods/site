---
type: docs
title: "必要条件"
description: Hugo 搜索模块的必要条件。
nav_weight: 1
nav_icon:
  vendor: bs
  name: card-checklist
  className: text-danger
date: 2023-09-17T23:26:58+08:00
featured: false
pinned: false
draft: false
series:
  - 模块
categories:
  - 搜索
tags:
  - PostCSS
  - AutoPrefixer
  - RTLCSS
authors:
  - HugoMods
images:
---

## Hugo 版本

要求 __extended__ Hugo `v0.110.0` 或更高版本。

## Hugo 模块

[Hugo 模块](https://gohugo.io/hugo-modules/use-modules/#prerequisite) 是必须的，你需要安装 [Go](https://go.dev/doc/install) 语言，并将站点或主题初始化为一个 Hugo 模块，另请参阅[如何使用 Hugo 模块]({{< relref lang=en path="/blog/hugo/using-hugo-modules" >}})。

## Node.js 包

- PostCSS
- Autoprefixer
- RTLCSS

可通过以下命令安装：

```sh
npm i postcss-cli autoprefixer rtlcss
```
