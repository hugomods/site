---
title: "详细信息"
linkTitle: "详细信息"
description: 生成 HTML 详细信息标签的短代码，其可由用户可按需打开或关闭。
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
  - 文档
categories:
  - 短代码
tags:
  - HTML
  - details
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{%/* details [summary] [open] */%}}
CONTENT
{{%/* /details */%}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

### 折叠的详细信息示例

{{< page-resource-content "data/example-collapsed" >}}

### 展开的详细信息示例

{{< page-resource-content "data/example-expanded" >}}
