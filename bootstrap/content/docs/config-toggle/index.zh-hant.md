---
title: "Bootstrap 配置切換短代碼"
linkTitle: "配置切換"
description: "從單個配置代碼生成多個語言代碼塊，支持 TOML、JSON 和 YAML。"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: code
  color: '#ff4088'
date: 2023-03-24T11:32:34+08:00
categories:
  - 文檔
tags:
  - Bootstrap
  - Shortcode
  - 代碼
  - 配置
  - Toggle
  - TOML
  - YAML
  - JSON
authors:
  - HugoMods
---

## 語法

```markdown
{{</* bs/config-toggle */>}}
PUT YAML/TOML/JSON CODE HERE.
{{</* /bs/config-toggle */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

{{% params data="data/site-params.yaml" heading="站點參數" %}}

{{< page-resource-content "data/config" >}}

## 示例

### 文件示例

{{< page-resource-content "data/example-filename" >}}

### 排除語言並重新排序

{{< page-resource-content "data/example-langs" >}}

### Hugo 配置示例

{{< page-resource-content "data/example-hugo-config" >}}

### Hugo 前言示例

{{< page-resource-content "data/example-hugo-front-matter" >}}
