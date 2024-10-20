---
type: docs
title: "Hugo Cloudflare Analytics 模塊"
linkTitle: "Cloudflare Analytics"
description: "Cloudflare Analytics 為您的網站提供免費、隱私至上的分析。"
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
  - 文檔
categories:
  - 模塊
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

## 安裝

### 導入模塊

{{< import-module "github.com/hugomods/cloudflare-analytics" >}}

### 導入模板

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" file="hugo" heading="站點配置" %}}

## 站點配置示例

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="頁面參數" %}}
