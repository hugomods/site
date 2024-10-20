---
type: docs
title: "Hugo Plausible Analytics 模块"
linkTitle: "Plausible Analytics"
description: Plausible 是一个轻量和开源的 Google Analytics 替代方案。
nav_weight: 4
nav_icon:
  vendor: simple
  name: plausibleanalytics
  color: '#5850EC'
featured: false
pinned: false
date: 2023-06-20T09:13:53+08:00
series:
  - 文档
categories:
  - 模块
  - 分析
tags:
  - Plausible 分析
  - Plausible Analytics
authors:
  - HugoMods
images:
menu:
  main:
    parent: analytics
    params:
      icon:
        vendor: simple
        name: plausibleanalytics
        color: '#5850EC'
---

{{% module "github.com/hugomods/plausible-analytics" %}}

## 安装

### 导入模块

{{< import-module "github.com/hugomods/plausible-analytics" >}}

### 导入模板

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" heading="站点配置" %}}

## 站点配置示例

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="页面参数配置" %}}

## 页面参数示例

{{< page-resource-content "data/page-params-example" >}}

