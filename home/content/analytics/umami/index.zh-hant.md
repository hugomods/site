---
type: docs
title: "Hugo Umami Analytics 模塊"
linkTitle: "Umami Analytics"
description: "Umami 是一個開源的、以隱私為重點的網絡分析工具，可作為谷歌分析的替代品。"
nav_weight: 5
nav_icon:
  vendor: simple
  name: umami
featured: true
pinned: false
date: 2024-10-13T13:15:15+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
  - 分析
tags:
  - Umami Analytics
  - Umami 分析
authors:
  - HugoMods
images:
menu:
  main:
    parent: analytics
    params:
      icon:
        vendor: simple
        name: umami
---

{{< module "github.com/hugomods/umami-analytics" >}}

## 安裝

### 導入模塊

{{< import-module "github.com/hugomods/umami-analytics" >}}

### 導入模板

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" file="hugo" heading="站點配置" %}}

## 站點配置示例

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="頁面參數" %}}
