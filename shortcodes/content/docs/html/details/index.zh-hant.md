---
title: "詳細信息"
linkTitle: "詳細信息"
description: 生成 HTML 詳細信息標籤的短代碼，其可由用戶可按需打開或關閉。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: card-text
  color: ''
featured: false
pinned: false
date: 2023-07-03T19:01:53+08:00
draft: false
series:
  - 文檔
categories:
  - 短代碼
tags:
  - HTML
  - details
authors:
  - HugoMods
images:
---

## 語法

```markdown
{{%/* details [summary] [open] */%}}
CONTENT
{{%/* /details */%}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

### 摺疊的詳細信息示例

{{< page-resource-content "data/example-collapsed" >}}

### 展開的詳細信息示例

{{< page-resource-content "data/example-expanded" >}}
