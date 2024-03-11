---
title: "文件內容"
linkTitle: "文件內容"
description: 用於從頁面資源文件、站點資源文件和項目文件讀取內容的短代碼，其對重用內容十分有用，比如代碼片段。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: file
  color: ''
featured: false
pinned: false
date: 2023-09-03T10:53:14+08:00
draft: false
series:
  - 文檔
categories:
  - 短代碼
tags:
  - 文件
  - 文件內容
authors:
  - HugoMods
images:
---

## 文件選擇順序

1. 頁面資源文件。
2. 站點資源文件。
3. 項目文件。

## 語法

```markdown
{{</* file-content "/path/to/file" */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

### 讀取頁面資源文件

{{< page-resource-content "data/example-page-resources" >}}

### 讀取站點資源文件

{{< page-resource-content "data/example-site-resources" >}}

### 讀取項目文件

{{< page-resource-content "data/example-project-files" >}}

### 讀取不存在的文件

{{< page-resource-content "data/example-nonexistent" >}}

### 與其他短代碼組合

以 [Bootstrap 配置切換](https://bootstrap.hugomods.com/docs/config-toggle/)為例。

{{< page-resource-content "data/example-combination" >}}
