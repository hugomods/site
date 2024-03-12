---
title: "Bootstrap 图片网格短代码"
linkTitle: "图片网格"
description: 用于生成图片网格的短代码。
date: 2024-01-12T10:20:28+08:00
series:
  - 文档
categories:
  - 短代码
tags:
  - Bootstrap
  - 图片
  - 网格
authors:
  - HugoMods
images:
nav_weight: 1000
nav_icon:
  vendor: bs
  name: images
---

## 语法

```markdown
{{</* bs/img-grid "data" */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 数据文件

数据文件需要存放于 `/data` 文件夹。

{{% params data="data/image-properties.yaml" heading="图片属性" headingStartLevel=3 %}}

## 示例

{{< page-resource-content "data/example" >}}
