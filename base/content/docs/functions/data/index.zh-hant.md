---
title: Data
linkTitle: Data
description: 用於從頁面資源和站點數據中讀取 JSON、TOML、YAML 數據的函數。
date: 2024-03-21T12:32:42+08:00
nav_icon:
  vendor: bs
  name: database-fill
categories:
  - 文檔
tags:
  - 數據
---

## 語法

該函數接收 `key` 和 `page` 參數。

{{< page-resource-content "codes/syntax" >}}

{{% bs/alert %}}
請注意於短代碼中，頁面變量為 `.Page`。
{{% /bs/alert %}}

{{% params "codes/params.yaml" %}}

## 數據文件查找順序

以 `content/example/index.md` 頁面為例，假設 `key` 為 `foo.bar`。

{{< page-resource-content "codes/data-files-lookup-order" >}}
