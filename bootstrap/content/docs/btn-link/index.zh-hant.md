---
title: "Bootstrap 鏈接按鈕短代碼"
linkTitle: "鏈接按鈕"
description: 用於生成鏈接按鈕的短代碼。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: link
  className: text-primary
date: 2023-04-10T08:49:25+08:00
categories:
  - 文檔
tags:
  - 短代碼
  - Button
  - Link
  - 按鈕
  - 鏈接
authors:
  - HugoMods
images:
---

## 語法

### 閉合語法

```markdown
{{</* bs/btn-link */>}}
TEXT
{{</* /bs/btn-link */>}}
```

建議用於富文本按鈕，對於嵌套短代碼很有用，比如 [圖標](https://zh-hans.icons.hugomods.com/docs/usages#use-icons-via-shortcode)。

### 自閉合語法

```markdown
{{</* bs/btn-link text=TEXT /*/>}}
```

推薦用於純文本按鈕。

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

### Self-Closing Button Link

{{< page-resource-content "data/example-self-closing" >}}

### Closing Button Link

{{< page-resource-content "data/example-closing" >}}

### Button Link Styles

{{< page-resource-content "data/example-styles" >}}

### Outline Button Link

{{< page-resource-content "data/example-outline" >}}

### Button Link Sizes

{{< page-resource-content "data/example-sizes" >}}

### Button Link with Extra Classes

{{< page-resource-content "data/example-class" >}}

### External and Internal Button Links

{{< page-resource-content "data/example-links" >}}
