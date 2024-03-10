---
title: "Bootstrap 配置切换短代码"
linkTitle: "配置切换"
description: "从单个配置代码生成多个语言代码块，支持 TOML、JSON 和 YAML。"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: code
  color: '#ff4088'
date: 2023-03-24T11:32:34+08:00
categories:
  - 文档
tags:
  - Bootstrap
  - Shortcode
  - 代码
  - 配置
  - Toggle
  - TOML
  - YAML
  - JSON
authors:
  - HugoMods
---

## 语法

```markdown
{{</* bs/config-toggle */>}}
PUT YAML/TOML/JSON CODE HERE.
{{</* /bs/config-toggle */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

{{% params data="data/site-params.yaml" heading="站点参数" %}}

{{< page-resource-content "data/config" >}}

## 示例

### 文件示例

{{< page-resource-content "data/example-filename" >}}

### 排除语言并重新排序

{{< page-resource-content "data/example-langs" >}}

### Hugo 配置示例

{{< page-resource-content "data/example-hugo-config" >}}

### Hugo 前言示例

{{< page-resource-content "data/example-hugo-front-matter" >}}
