---
title: "配置"
linkTitle: "配置"
description: 模块支持 Bootstrap v5 开箱即用，若你并不使用 Bootstrap，则需要对配置进行调整。
nav_weight: 10
nav_icon:
  vendor: bs
  name: gear
date: 2023-03-25T22:13:36+08:00
categories:
  - 文档
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
于 `v0.8.3` 开始，`params.images` 重命名为 `params.hugomods.images`，以避免于 Hugo 内置目录冲突，详情请参阅 https://github.com/hugomods/images/issues/26。
{{< /markdownify >}}
{{< /bs/alert >}}

{{% params "data/params.yaml" %}}
