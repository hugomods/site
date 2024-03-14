---
title: "安装"
linkTitle: "安装"
description: 学习如何安装 Hugo ECharts 模块。
nav_weight: 1
nav_icon:
  vendor: bs
  name: cloud-download
  className: text-success
date: 2024-03-14T13:11:19+08:00
series:
  - 文档
categories:
tags:
  - 安装
authors:
  - HugoMods
images:
---

{{% hugo-module-requirements %}}

## 导入模块

{{< page-resource-content "data/config" >}}

## 添加模板

{{% skip-if-hugopress %}}

于  `<body>` 元素末尾附近添加 `echarts/assets/script` 模板，比如：

{{% bs/alert %}}
若你不懂如何操作，请向主题作者寻求帮助。
{{% /bs/alert %}}

{{< page-resource-content "data/templates" >}}
