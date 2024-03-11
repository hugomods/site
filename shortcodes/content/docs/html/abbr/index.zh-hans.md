---
title: "缩写表"
linkTitle: "缩写表"
description: "创建带有标题的缩写表。"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: alphabet
  className: 'text-info'
featured: false
pinned: false
date: 2023-11-24T09:52:19+08:00
draft: false
series:
  - 文档
categories:
  - 短代码
tags:
  - Abbreviations
  - Abbr
  - 缩写
  - 缩写表
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{</* abbr [text] [title] */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 数据文件

数据文件应存放于 `data/abbreviations` 目录，并以站点语言代码进行命名，比如 `data/abbreviations/en.toml` 对应英文站点。

{{< page-resource-content "data/data-files" >}}

上述示例数据文件中，`Hugo` 和 `HugoMods` 就是短代码的 `text`（键）。

## 示例

以上述示例数据文件作为例子。

### 使用数据文件

{{< page-resource-content "data/example" >}}

### 就地定义标题

{{< page-resource-content "data/example-title" >}}

### 不存在或者无效的缩写

{{< page-resource-content "data/example-invalid" >}}
