---
type: docs
title: "Hugo Umami Analytics 模块"
linkTitle: "Umami Analytics"
description: "Umami 是一个开源的、以隐私为重点的网络分析工具，可作为谷歌分析的替代品。"
nav_weight: 5
nav_icon:
  vendor: simple
  name: umami
featured: true
pinned: false
date: 2024-10-13T13:15:15+08:00
draft: false
series:
  - 文档
categories:
  - 模块
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

## 安装

### 导入模块

{{< import-module "github.com/hugomods/umami-analytics" >}}

### 导入模板

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" file="hugo" heading="站点配置" %}}

## 站点配置示例

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="页面参数" %}}
