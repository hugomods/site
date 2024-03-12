---
title: "Bootstrap 手风琴短代码"
linkTitle: "手风琴"
description: |
  用于构建垂直手风琴的短代码，FAQ 是最常见的用例。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: chevron-expand
date: 2023-08-11T23:47:27+08:00
categories:
  - 文档
tags:
  - Bootstrap
  - 短代码
  - Accordion
  - 手风琴
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{</* bs/accordion */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 数据文件映射

{{< page-resource-content "data/data-files-mapping" >}}

{{% params data="data/data-item-properties.yaml" heading="数据条目属性" %}}

### 数据文件示例

{{< page-resource-content "data/data-file-example" >}}

## 示例

### 默认手风琴示例

{{< page-resource-content "data/example" >}}

### Flush 手风琴示例

{{< page-resource-content "data/example-flush" >}}

### 总是打开的 Flush 手风琴示例

{{< page-resource-content "data/example-flush-always-open" >}}
