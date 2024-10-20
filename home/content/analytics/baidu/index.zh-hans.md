---
type: docs
title: "Hugo 百度统计模块"
linkTitle: "百度统计"
description: "百度统计是百度推出的全域数据管理和分析平台，提供网站、APP、小程序等各端数据一站式管理和多维智能数据分析。"
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
  - 文档
categories:
  - 模块
  - 分析
tags:
  - 百度统计
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

## 安装

### 导入模块

{{< import-module "github.com/hugomods/baidu-analytics" >}}

### 导入模板

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" file="hugo" heading="站点配置" %}}

## 站点配置示例

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="页面参数" %}}
