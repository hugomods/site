---
type: docs
title: "Hugo Microsoft Clarity Analytics 模块"
linkTitle: "Microsoft Clarity"
description: "Microsoft Clarity Analytics 是一个免费的服务，其可以捕捉人们如何使用你的网站。"
nav_weight: 3
nav_icon:
  vendor: bs
  name: microsoft
  color: '#0E7BD8'
featured: true
pinned: false
date: 2023-11-16T01:43:15+08:00
draft: false
series:
  - 文档
categories:
  - 模块
  - 分析
tags:
  - Microsoft Clarity
authors:
  - HugoMods
images:
  - https://claritystatic.azureedge.net/images/homepageBannerV2.png
menu:
  main:
    parent: analytics
    params:
      icon:
        vendor: bs
        name: microsoft
        color: '#0E7BD8'
---

{{< module "github.com/hugomods/microsoft-clarity" >}}

## 安装

### 导入模块

{{< import-module "github.com/hugomods/microsoft-clarity" >}}

### 导入模板

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" file="hugo" heading="站点配置" %}}

## 站点配置示例

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="页面参数" %}}
