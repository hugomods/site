---
type: docs
title: "配置"
nav_weight: 10
nav_icon:
  vendor: bs
  name: gear
  className: text-success
description: Hugo 搜索模块可用的站点和页面参数列表。
date: 2023-09-25T14:51:03+08:00
featured: false
pinned: false
draft: false
series:
  - 模块
categories:
  - 搜索
tags:
  - 参数
authors:
  - HugoMods
images:
---

## 站点参数

{{< bootstrap/config-toggle filename=hugo >}}
[params.search]
stall_threshold = 200
# ...
{{< /bootstrap/config-toggle >}}

{{% parameters "data/site-params.yaml" %}}

## 页面参数

> AKA front matter.

{{% parameters "data/page-params.yaml" %}}
