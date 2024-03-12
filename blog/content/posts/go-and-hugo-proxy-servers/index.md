---
title: "Go and Hugo Proxy Servers"
date: 2023-04-09T10:02:52+08:00
draft: false
featured: true
series:
categories:
  - Go
  - Hugo
tags:
  - Proxy
images:
  - /images/nasa.jpg
authors:
  - HugoMods
---

Go's official module proxy server is blocked by GFW, so it can't be used properly in China without VPN. However, this can be solved by setting a proxy server, and this article will list some available Go proxy servers. The same applies to the Hugo modules.

<!--more-->

## Proxy Servers

| Proxy Server             | URL                                   |
| ------------------------ | ------------------------------------- |
| GOPROXY.CN (Qiniu Cloud) | `https://goproxy.cn/`                 |
| GOPROXY.IO               | `https://goproxy.io/`                 |
| Alibaba Cloud (Aliyun)   | `https://mirrors.aliyun.com/goproxy/` |
| Tencent Cloud            | `https://mirrors.tencent.com/go/`     |

## Setting Go Proxy Server

{{< page-resource-content "go-module-proxy-env" >}}

## Setting Hugo Modules Proxy Server

Unlike Go, Hugo uses the `HUGO_MODULE_PROXY` environment variable instead of `GOPROXY`.

{{< page-resource-content "hugo-module-proxy-env" >}}

Read more on [Module Config](https://gohugo.io/hugo-modules/configuration/#module-config-top-level).
