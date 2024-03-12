---
title: Title
linkTitle: Title
description: 为页面生成带有分隔符、栏目和国际化的分页信息的标题。
date: 2024-03-08T12:32:12+08:00
nav_icon:
  vendor: bs
  name: card-heading
categories:
  - 文档
tags:
  - 模板
  - 标题
---

## 配置

{{< page-resource-content "codes/config" >}}

{{% params data="params.yaml" headingStartLevel=3 %}}

## 用法

{{% bs/alert warning %}}
你需要用 `block` 指令包裹此模板，在必要时初始化分页器，因为 `.Paginator` 一旦初始化后会被缓存，所以我们必须在调用 `base/title` 模板前将其初始化，否则分页器将无法正常工作。
{{% /bs/alert %}}

{{< page-resource-content "codes/usage" >}}

## 示例

{{< page-resource-content "codes/examples" >}}
