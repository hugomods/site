---
title: "JSRun"
linkTitle: "JSRun"
description: 添加對 JSRun 的支持，其用於測試代碼的在線代碼編輯器，支持 JavaScript、CSS、HTML、GO、PHP、MySQL 等等。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: filetype-js
featured: false
pinned: false
date: 2023-04-02T12:45:02+08:00
draft: false
series:
  - 文檔
categories:
  - 短代碼
tags:
  - 代碼編輯器
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

## 語法

```markdown
{{</* jsrun [id] */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

{{< page-resource-content "data/example" >}}

### Term 模式的 Go 語言 JSRun

{{< page-resource-content "data/example-go" >}}

### Quick 模式的 MySQL JSRun

{{< page-resource-content "data/example-mysql" >}}

### 自定義標籤欄 JSRun

{{< page-resource-content "data/example-tabs" >}}

### 深色主題 JSRun

{{< page-resource-content "data/example-theme" >}}

### 自定義高度 JSRun

{{< page-resource-content "data/example-height" >}}

### 自定義標籤的深色主題 JSRun

{{< page-resource-content "data/example-theme-tabs" >}}
