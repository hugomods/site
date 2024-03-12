---
title: "Bootstrap 手風琴短代碼"
linkTitle: "手風琴"
description: |
  用於構建垂直手風琴的短代碼，FAQ 是最常見的用例。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: chevron-expand
date: 2023-08-11T23:47:27+08:00
categories:
  - 文檔
tags:
  - Bootstrap
  - 短代碼
  - Accordion
  - 手風琴
authors:
  - HugoMods
images:
---

## 語法

```markdown
{{</* bs/accordion */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 數據文件映射

{{< page-resource-content "data/data-files-mapping" >}}

{{% params data="data/data-item-properties.yaml" heading="數據條目屬性" %}}

### 數據文件示例

{{< page-resource-content "data/data-file-example" >}}

## 示例

### 默認手風琴示例

{{< page-resource-content "data/example" >}}

### Flush 手風琴示例

{{< page-resource-content "data/example-flush" >}}

### 總是打開的 Flush 手風琴示例

{{< page-resource-content "data/example-flush-always-open" >}}
