---
title: "Go 和 Hugo 代理服务器"
date: 2023-04-09T10:02:52+08:00
draft: false
featured: true
series:
categories:
  - Go
  - Hugo
tags:
  - 代理服务器
images:
  - /images/nasa.jpg
authors:
  - HugoMods
---

Go 官方的模块代理服务器被 GFW 墙了，没有 VPN 的情况下，于国内是无法正常使用的。不过可以通过设置代理服务器解决，本文将列出一些可用的 Go 代理服务器。而这也同样适用于 Hugo 模块。

<!--more-->

## 代理服务器

| 代理服务器          | URL                                   |
| ------------------- | ------------------------------------- |
| GOPROXY.CN (七牛云) | `https://goproxy.cn/`                 |
| GOPROXY.IO          | `https://goproxy.io/`                 |
| 阿里云              | `https://mirrors.aliyun.com/goproxy/` |
| 腾讯云              | `https://mirrors.tencent.com/go/`     |

## 设置 Go 模块代理服务器

{{< page-resource-content "go-module-proxy-env" >}}

## 设置 Hugo 模块代理服务器

与 Go 不同，Hugo 使用 `HUGO_MODULE_PROXY` 环境变量而非 `GOPROXY`。

{{< page-resource-content "hugo-module-proxy-env" >}}

详情请参阅 [Module Config](https://gohugo.io/hugo-modules/configuration/#module-config-top-level).
