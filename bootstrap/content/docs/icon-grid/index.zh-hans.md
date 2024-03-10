---
title: "Bootstrap 图标网格短代码"
linkTitle: "图标网格"
description: 用于生成带有图标、标题和描述的图标网格。
date: 2023-04-12T09:48:05+08:00
nav_weight: 1000
nav_icon:
  vendor: bs
  name: grid-3x3-gap
  className: text-success
series:
  - 文档
categories:
  - 短代码
tags:
  - 图标
  - 网格
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{</* bs/icon-grid [data] */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 数据

数据文件需要存放于 `/data` 文件夹。

{{% params data="data/data-item-properties.yaml" heading="数据条目属性" headingStartLevel=3 %}}

{{% bs/alert warning %}}
{{% markdownify %}}
当 `linkText` 为空时，请确保 `description` 不包含链接。
{{% /markdownify %}}
{{% /bs/alert %}}

## 示例

### 示例数据文件

{{< page-resource-content "data/example-data" >}}

### 默认链接文本

{{< page-resource-content "data/example" >}}

### 自定义链接文本

{{< page-resource-content "data/example-link-text" >}}

### 空链接文本

{{< page-resource-content "data/example-empty-link-text" >}}

### 居中显示

{{< page-resource-content "data/example-centered" >}}

### 更小的间隔

{{< page-resource-content "data/example-gap" >}}

### 无边框

{{< page-resource-content "data/example-border" >}}
