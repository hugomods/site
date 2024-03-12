---
title: Title
linkTitle: Title
description: 為頁面生成帶有分隔符、欄目和國際化的分頁信息的標題。
date: 2024-03-08T12:32:12+08:00
nav_icon:
  vendor: bs
  name: card-heading
categories:
  - 文檔
tags:
  - 模板
  - 標題
---

## 配置

{{< page-resource-content "codes/config" >}}

{{% params data="params.yaml" headingStartLevel=3 %}}

## 用法

{{% bs/alert warning %}}
你需要用 `block` 指令包裹此模板，在必要時初始化分頁器，因為 `.Paginator` 一旦初始化後會被緩存，所以我們必須在調用 `base/title` 模板前將其初始化，否則分頁器將無法正常工作。
{{% /bs/alert %}}

{{< page-resource-content "codes/usage" >}}

## 示例

{{< page-resource-content "codes/examples" >}}
