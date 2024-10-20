---
type: docs
title: "Hugo 百度統計模塊"
linkTitle: "百度統計"
description: "百度統計是百度推出的全域數據管理和分析平臺，提供網站、APP、小程序等各端數據一站式管理和多維智能數據分析。"
nav_weight: 10
nav_icon:
  vendor: simple
  name: baidu
  color: '#4E6EF2'
featured: true
pinned: false
date: 2024-10-14T12:05:15+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
  - 分析
tags:
  - 百度統計
authors:
  - HugoMods
images:
menu:
  main:
    parent: analytics
    params:
      icon:
        vendor: simple
        name: baidu
        color: '#4E6EF2'
---

{{< module "github.com/hugomods/baidu-analytics" >}}

## 安裝

### 導入模塊

{{< import-module "github.com/hugomods/baidu-analytics" >}}

### 導入模板

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" file="hugo" heading="站點配置" %}}

## 站點配置示例

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="頁面參數" %}}
