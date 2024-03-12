---
title: "短代码参数"
linkTitle: 短代码参数
description: 描述 Hugo 短代码的参数定义，这对编写短代码文档非常有用。
nav_weight: 1
nav_icon:
  vendor: bs
  name: code-square
date: 2024-03-10T15:21:19+08:00
series:
  - 文档
categories:
  - 短代码
tags:
  - 参数
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{%/* hugo/shortcode-params [data] */%}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

{{% params data="data/data-item-properties.yaml" heading="数据条目属性" %}}

## 示例

{{< page-resource-content "data/example" >}}
