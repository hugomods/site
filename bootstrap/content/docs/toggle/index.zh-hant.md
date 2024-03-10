---
title: "Bootstrap Toggle 短代碼"
linkTitle: "Toggle"
description: 用於生成可切換的導航欄和標籤欄。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: toggle-on
  className: text-primary
date: 2023-03-24T13:05:58+08:00
series:
  - 文檔
categories:
  - 短代碼
tags:
  - Bootstrap
  - Toggle
  - Tabs
  - Navs
authors:
  - HugoMods
images:
---

The [config toggle]({{< ref "docs/config-toggle" >}}) is useful, but it's limited to generate configuration code blocks in `YAML`, `TOML` and `JSON` languages. The `toggle*` shortcodes are designed to be more versatile.

## Toggle

{{% hugo/shortcode-params data="data/toggle-params.yaml" heading="Toggle 參數" headingStartLevel=3 %}}

## Toggle 條目

{{% hugo/shortcode-params data="data/toggle-params.yaml" heading="Toggle 條目參數" headingStartLevel=3 %}}

## 示例

### 數據文件示例

{{< page-resource-content "data/example-data-file" >}}

### 嵌套示例

{{< page-resource-content "data/example-nested" >}}

### 帶 Pills 樣式的 SDK 示例

{{< page-resource-content "data/example-sdk" >}}

### 帶下劃線樣式的非全寬、居中示例

{{< page-resource-content "data/example-other" >}}
