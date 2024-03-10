---
title: "Bootstrap 链接按钮短代码"
linkTitle: "链接按钮"
description: 用于生成链接按钮的短代码。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: link
  className: text-primary
date: 2023-04-10T08:49:25+08:00
categories:
  - 文档
tags:
  - 短代码
  - Button
  - Link
  - 按钮
  - 链接
authors:
  - HugoMods
images:
---

## 语法

### 闭合语法

```markdown
{{</* bs/btn-link */>}}
TEXT
{{</* /bs/btn-link */>}}
```

建议用于富文本按钮，对于嵌套短代码很有用，比如 [图标](https://zh-hans.icons.hugomods.com/docs/usages#use-icons-via-shortcode)。

### 自闭合语法

```markdown
{{</* bs/btn-link text=TEXT /*/>}}
```

推荐用于纯文本按钮。

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
