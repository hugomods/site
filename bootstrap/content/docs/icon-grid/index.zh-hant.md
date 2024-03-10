---
title: "Bootstrap 圖標網格短代碼"
linkTitle: "圖標網格"
description: 用於生成帶有圖標、標題和描述的圖標網格。
date: 2023-04-12T09:48:05+08:00
nav_weight: 1000
nav_icon:
  vendor: bs
  name: grid-3x3-gap
  className: text-success
series:
  - 文檔
categories:
  - 短代碼
tags:
  - 圖標
  - 網格
authors:
  - HugoMods
images:
---

## 語法

```markdown
{{</* bs/icon-grid [data] */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 數據

數據文件需要存放於 `/data` 文件夾。

{{% params data="data/data-item-properties.yaml" heading="數據條目屬性" headingStartLevel=3 %}}

{{% bs/alert warning %}}
{{% markdownify %}}
當 `linkText` 為空時，請確保 `description` 不包含鏈接。
{{% /markdownify %}}
{{% /bs/alert %}}

## 示例

### 示例數據文件

{{< page-resource-content "data/example-data" >}}

### 默認鏈接文本

{{< page-resource-content "data/example" >}}

### 自定義鏈接文本

{{< page-resource-content "data/example-link-text" >}}

### 空鏈接文本

{{< page-resource-content "data/example-empty-link-text" >}}

### 居中顯示

{{< page-resource-content "data/example-centered" >}}

### 更小的間隔

{{< page-resource-content "data/example-gap" >}}

### 無邊框

{{< page-resource-content "data/example-border" >}}
