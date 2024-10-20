---
type: docs
title: "Hugo Google Analytics 模塊"
linkTitle: "Google Analytics"
description: 谷歌分析是一項免費的網絡分析服務，為搜索引擎優化（SEO）和營銷目的提供統計數據和基本分析工具。
nav_weight: 1
nav_icon:
  vendor: simple
  name: googleanalytics
  color: "#e37400"
featured: false
pinned: false
date: 2023-03-29T10:14:12+08:00
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
aliases:
  - /en/docs/google-analytics
menu:
  main:
    parent: analytics
    params:
      icon:
        vendor: simple
        name: googleanalytics
        color: "#e37400"
---

{{< module "github.com/hugomods/google-analytics" >}}

## 安裝

### 導入模塊

{{< import-module "github.com/hugomods/google-analytics" >}}

### 導入模板

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" heading="站點配置" %}}

## 站點配置示例

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="頁面參數" %}}
