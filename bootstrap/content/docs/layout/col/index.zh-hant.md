---
title: "Bootstrap 列短代碼"
linkTitle: "列"
description: "用於生成網格列的短代碼。"
nav_weight: 30
nav_icon:
  vendor: bs
  name: layout-three-columns
featured: false
pinned: false
date: 2023-06-29T08:49:25+08:00
draft: false
series:
  - 文檔
categories:
  - 短代碼
tags:
  - 佈局
  - 列
  - Col
authors:
  - HugoMods
images:
---

## 語法

```markdown
{{%/* bs/col */%}}
BODY
{{%/* /bs/col */%}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

### 等寬

{{< page-resource-content "data/example-equal-width" >}}

### 自定義寬度

{{< page-resource-content "data/example-specified-width" >}}

### 帶偏移的列

{{< page-resource-content "data/example-offset" >}}
