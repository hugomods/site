---
type: docs
title: "Hugo Cloudflare Analytics 模块"
linkTitle: "Cloudflare Analytics"
description: "Cloudflare Analytics 为您的网站提供免费、隐私至上的分析。"
nav_weight: 6
nav_icon:
  vendor: simple
  name: cloudflare
  color: '#F6821F'
featured: true
pinned: false
date: 2024-10-14T13:13:15+08:00
draft: false
series:
  - 文档
categories:
  - 模块
  - 分析
tags:
  - Cloudflare Analytics
  - Cloudflare 分析
authors:
  - HugoMods
images:
menu:
  main:
    parent: analytics
    params:
      icon:
        vendor: simple
        name: cloudflare
        color: '#F6821F'
---

{{< module "github.com/hugomods/cloudflare-analytics" >}}

## 安装

### 导入模块

{{< import-module "github.com/hugomods/cloudflare-analytics" >}}

### 导入模板

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" file="hugo" heading="站点配置" %}}

## 站点配置示例

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="页面参数" %}}
