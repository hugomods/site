---
title: "Bootstrap 列短代码"
linkTitle: "列"
description: "用于生成网格列的短代码。"
nav_weight: 30
nav_icon:
  vendor: bs
  name: layout-three-columns
featured: false
pinned: false
date: 2023-06-29T08:49:25+08:00
draft: false
series:
  - 文档
categories:
  - 短代码
tags:
  - 布局
  - 列
  - Col
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{%/* bs/col */%}}
BODY
{{%/* /bs/col */%}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

### 等宽

{{< page-resource-content "data/example-equal-width" >}}

### 自定义宽度

{{< page-resource-content "data/example-specified-width" >}}

### 带偏移的列

{{< page-resource-content "data/example-offset" >}}
