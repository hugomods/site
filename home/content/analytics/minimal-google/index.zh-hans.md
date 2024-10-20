---
type: docs
title: "Hugo 轻量级 Google Analytics 模块"
linkTitle: "轻量级 Google Analytics"
description: 轻量级谷歌分析记录页面浏览量、网站搜索、滚动和文件下载，而无需加载官方笨重的跟踪库。
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

## 安装

### 导入模块

{{< import-module "github.com/hugomods/minimal-google-analytics" >}}

### 导入模板

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" heading="站点配置" %}}

## 站点配置示例

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="页面参数" %}}
