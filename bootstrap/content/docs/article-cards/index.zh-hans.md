---
title: "Bootstrap 文章卡片短代码"
description: 用于生成卡片样式的文章列表的短代码。
linkTitle: 文章卡片
date: 2023-07-03T15:32:53+08:00
nav_weight: 1000
nav_icon:
  vendor: bs
  name: files
  className: text-primary
categories:
  - 文档
tags:
  - 短代码
  - 文章
  - 卡片
authors:
  - HugoMods
images:
---

{{% bs/alert danger %}}
请勿于文章详情页使用此短代码，否则会导致无限递归问题，你可以在主页、部分列表中安全地使用它。
{{% /bs/alert %}}

## 语法

```markdown
{{</* bs/article-cards */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

{{% params data="data/site-params.yaml" heading="站点参数" %}}

{{< page-resource-content "data/config" >}}
