---
title: Data
linkTitle: Data
description: 用于从页面资源和站点数据中读取 JSON、TOML、YAML 数据的函数。
date: 2024-03-21T12:32:42+08:00
nav_icon:
  vendor: bs
  name: database-fill
categories:
  - 文档
tags:
  - 数据
---

## 语法

该函数接收 `key` 和 `page` 参数。

{{< page-resource-content "codes/syntax" >}}

{{% bs/alert %}}
请注意于短代码中，页面变量为 `.Page`。
{{% /bs/alert %}}

{{% params "codes/params.yaml" %}}

## 数据文件查找顺序

以 `content/example/index.md` 页面为例，假设 `key` 为 `foo.bar`。

{{< page-resource-content "codes/data-files-lookup-order" >}}
