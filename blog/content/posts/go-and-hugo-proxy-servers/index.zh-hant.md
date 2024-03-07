---
title: "Go 和 Hugo 代理服務器"
date: 2023-04-09T10:02:52+08:00
draft: false
featured: true
series:
categories:
  - Go
  - Hugo
tags:
  - 代理服務器
images:
  - /images/nasa.jpg
authors:
  - HugoMods
---

Go 官方的模塊代理服務器被 GFW 牆了，沒有 VPN 的情況下，於國內是無法正常使用的。不過可以通過設置代理服務器解決，本文將列出一些可用的 Go 代理服務器。而這也同樣適用於 Hugo 模塊。

<!--more-->

## 代理服務器

| 代理服務器          | URL                                   |
| ------------------- | ------------------------------------- |
| GOPROXY.CN (七牛雲) | `https://goproxy.cn/`                 |
| GOPROXY.IO          | `https://goproxy.io/`                 |
| 阿里雲              | `https://mirrors.aliyun.com/goproxy/` |
| 騰訊雲              | `https://mirrors.tencent.com/go/`     |

## 設置 Go 模塊代理服務器

{{< page-resource-content "go-module-proxy-env" >}}

## 設置 Hugo 模塊代理服務器

與 Go 不同，Hugo 使用 `HUGO_MODULE_PROXY` 環境變量而非 `GOPROXY`。

{{< page-resource-content "hugo-module-proxy-env" >}}

詳情請參閱 [Module Config](https://gohugo.io/hugo-modules/configuration/#module-config-top-level).
