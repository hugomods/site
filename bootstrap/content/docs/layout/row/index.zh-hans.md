---
title: "Bootstrap 网格行短代码"
linkTitle: "行"
description: 用于生成网格行的短代码
nav_weight: 20
nav_icon:
  vendor: bs
  name: list
date: 2023-06-29T08:49:25+08:00
series:
  - 文档
categories:
  - 短代码
tags:
  - 行
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{%/* bs/row */%}}
COLUMNS
{{%/* /bs/row */%}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

以下例子分别于 **small**、**medium** 和 **large**（及以上）大小的屏幕显示 **1**、**2**、**3** 列每行。

{{< page-resource-content "data/example" >}}
