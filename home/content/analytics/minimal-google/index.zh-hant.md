---
type: docs
title: "Hugo 輕量級 Google Analytics 模塊"
linkTitle: "輕量級 Google Analytics"
description: 輕量級谷歌分析記錄頁面瀏覽量、網站搜索、滾動和文件下載，而無需加載官方笨重的跟蹤庫。
nav_weight: 2
nav_icon:
  vendor: simple
  name: googleanalytics
  color: "#e37400"
featured: false
pinned: false
date: 2024-10-11T20:34:12+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
  - 分析
tags:
  - Google Analytics
  - Google 分析
  - 谷歌分析
authors:
  - HugoMods
images:
menu:
  main:
    parent: analytics
    params:
      icon:
        vendor: simple
        name: googleanalytics
        color: "#e37400"
---

{{< module "github.com/hugomods/minimal-google-analytics" >}}

## 安裝

### 導入模塊

{{< import-module "github.com/hugomods/minimal-google-analytics" >}}

### 導入模板

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" heading="站點配置" %}}

## 站點配置示例

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="頁面參數" %}}
