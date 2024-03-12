---
title: "Bootstrap Toggle 短代码"
linkTitle: "Toggle"
description: 用于生成可切换的导航栏和标签栏。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: toggle-on
  className: text-primary
date: 2023-03-24T13:05:58+08:00
series:
  - 文档
categories:
  - 短代码
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

{{% hugo/shortcode-params data="data/toggle-params.yaml" heading="Toggle 参数" headingStartLevel=3 %}}

## Toggle 条目

{{% hugo/shortcode-params data="data/toggle-params.yaml" heading="Toggle 条目参数" headingStartLevel=3 %}}

## 示例

### 数据文件示例

{{< page-resource-content "data/example-data-file" >}}

### 嵌套示例

{{< page-resource-content "data/example-nested" >}}

### 带 Pills 样式的 SDK 示例

{{< page-resource-content "data/example-sdk" >}}

### 带下划线样式的非全宽、居中示例

{{< page-resource-content "data/example-other" >}}
