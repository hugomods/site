---
type: docs
title: "Hugo Google Analytics 模块"
linkTitle: "Google Analytics"
description: 谷歌分析是一项免费的网络分析服务，为搜索引擎优化（SEO）和营销目的提供统计数据和基本分析工具。
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
  - 文档
categories:
  - 模块
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

## 安装

### 导入模块

{{< import-module "github.com/hugomods/google-analytics" >}}

### 导入模板

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" heading="站点配置" %}}

## 站点配置示例

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="页面参数" %}}
