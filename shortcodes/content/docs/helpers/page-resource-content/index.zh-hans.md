---
title: "页面资源内容"
linkTitle: 页面资源内容
description: 用于呈现页面资源内容的短代码，这对重用内容块非常有用，尤其是在编写多语言文档时。
nav_weight: 1
nav_icon:
  vendor: bs
  name: braces
date: 2024-03-11T13:06:19+08:00
series:
  - 文档
categories:
  - 短代码
tags:
  - Markdown
  - 页面资源
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{</* page-resource-content [name] */>}}
```

{{% bs/alert warning %}}
请不要使用 `md` 作为扩展名，如果你打算在多语言页面上重用它。
{{% /bs/alert %}}

{{% params "data/params.yaml" %}}

## 示例

{{< page-resource-content "data/example" >}}
