---
title: "Bootstrap 文章卡片短代碼"
description: 用於生成卡片樣式的文章列表的短代碼。
linkTitle: 文章卡片
date: 2023-07-03T15:32:53+08:00
nav_weight: 1000
nav_icon:
  vendor: bs
  name: files
  className: text-primary
categories:
  - 文檔
tags:
  - 短代碼
  - 文章
  - 卡片
authors:
  - HugoMods
images:
---

{{% bs/alert danger %}}
請勿於文章詳情頁使用此短代碼，否則會導致無限遞歸問題，你可以在主頁、部分列表中安全地使用它。
{{% /bs/alert %}}

## 語法

```markdown
{{</* bs/article-cards */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

{{% params data="data/site-params.yaml" heading="站點參數" %}}

{{< page-resource-content "data/config" >}}
