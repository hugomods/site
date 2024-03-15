---
title: "短代码"
linkTitle: "短代码"
description: 使用短代码生成 Kroki 图表。
nav_weight: 2
nav_icon:
  vendor: bs
  name: braces
  className: text-primary
date: 2024-03-15T13:20:29+08:00
series:
  - 文档
categories:
  - 短代码
tags:
authors:
  - HugoMods
images:
---

## 语法

### 闭合语法

```markdown
{{</* kroki _type=[type] */>}}
DIAGRAM
{{</* /kroki */>}}
```

其与[代码块]({{< relref "docs/codeblock" >}})用法相似。

### 自闭合语法

```markdown
{{</* kroki _type=[type] _name=[name] /*/>}}
```

{{< page-resource-content "codes/syntax" >}}

{{% hugo/shortcode-params "codes/params.yaml" %}}

### 其他

你可以为图表设置任意属性，比如 `id`、`class` 和 `data-*` 等等。

## 示例

### 站点文件 Kroki 示例

{{< page-resource-content "codes/example-site-file" >}}

### 页面文件 Kroki 示例

{{< page-resource-content "codes/example-page-file" >}}
