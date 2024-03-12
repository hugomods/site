---
title: "JSRun"
linkTitle: "JSRun"
description: 添加对 JSRun 的支持，其用于测试代码的在线代码编辑器，支持 JavaScript、CSS、HTML、GO、PHP、MySQL 等等。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: filetype-js
featured: false
pinned: false
date: 2023-04-02T12:45:02+08:00
draft: false
series:
  - 文档
categories:
  - 短代码
tags:
  - 代码编辑器
  - JSRun
  - CSS
  - HTML
  - JS
  - JavaScript
  - MySQL
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{</* jsrun [id] */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

{{< page-resource-content "data/example" >}}

### Term 模式的 Go 语言 JSRun

{{< page-resource-content "data/example-go" >}}

### Quick 模式的 MySQL JSRun

{{< page-resource-content "data/example-mysql" >}}

### 自定义标签栏 JSRun

{{< page-resource-content "data/example-tabs" >}}

### 深色主题 JSRun

{{< page-resource-content "data/example-theme" >}}

### 自定义高度 JSRun

{{< page-resource-content "data/example-height" >}}

### 自定义标签的深色主题 JSRun

{{< page-resource-content "data/example-theme-tabs" >}}
