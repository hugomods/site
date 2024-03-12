---
title: "配置"
linkTitle: "配置"
description: 模塊支持 Bootstrap v5 開箱即用，若你並不使用 Bootstrap，則需要對配置進行調整。
nav_weight: 10
nav_icon:
  vendor: bs
  name: gear
date: 2023-03-25T22:13:36+08:00
categories:
  - 文檔
tags:
  - 配置
  - Bootstrap
authors:
  - HugoMods
---

## 配置

{{< page-resource-content "data/config" >}}

{{< bs/alert warning >}}
{{< markdownify >}}
於 `v0.8.3` 開始，`params.images` 重命名為 `params.hugomods.images`，以避免於 Hugo 內置目錄衝突，詳情請參閱 https://github.com/hugomods/images/issues/26。
{{< /markdownify >}}
{{< /bs/alert >}}

{{% params "data/params.yaml" %}}
