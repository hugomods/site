---
title: "文件内容"
linkTitle: "文件内容"
description: 用于从页面资源文件、站点资源文件和项目文件读取内容的短代码，其对重用内容十分有用，比如代码片段。
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
  - 文档
categories:
  - 短代码
tags:
  - 文件
  - 文件内容
authors:
  - HugoMods
images:
---

## 文件选择顺序

1. 页面资源文件。
2. 站点资源文件。
3. 项目文件。

## 语法

```markdown
{{</* file-content "/path/to/file" */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

### 读取页面资源文件

{{< page-resource-content "data/example-page-resources" >}}

### 读取站点资源文件

{{< page-resource-content "data/example-site-resources" >}}

### 读取项目文件

{{< page-resource-content "data/example-project-files" >}}

### 读取不存在的文件

{{< page-resource-content "data/example-nonexistent" >}}

### 与其他短代码组合

以 [Bootstrap 配置切换](https://bootstrap.hugomods.com/docs/config-toggle/)为例。

{{< page-resource-content "data/example-combination" >}}
