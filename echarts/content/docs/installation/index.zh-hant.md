---
title: "安裝"
linkTitle: "安裝"
description: 學習如何安裝 Hugo ECharts 模塊。
nav_weight: 1
nav_icon:
  vendor: bs
  name: cloud-download
  className: text-success
date: 2024-03-14T13:11:19+08:00
series:
  - 文檔
categories:
tags:
  - 安裝
authors:
  - HugoMods
images:
---

{{% hugo-module-requirements %}}

## 導入模塊

{{< page-resource-content "data/config" >}}

{{% bs/alert %}}
若你使用 [HB 框架](https://hbstack.dev/)的主題，則導入 `github.com/hbstack/echarts`。
{{% /bs/alert %}}

## 添加模板

{{% skip-if-hugopress %}}

於  `<body>` 元素末尾附近添加 `echarts/assets/script` 模板，比如：

{{% bs/alert %}}
若你不懂如何操作，請向主題作者尋求幫助。
{{% /bs/alert %}}

{{< page-resource-content "data/templates" >}}
