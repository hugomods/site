---
title: "短代碼"
linkTitle: "短代碼"
description: 使用短代碼生成 Kroki 圖表。
nav_weight: 2
nav_icon:
  vendor: bs
  name: braces
  className: text-primary
date: 2024-03-15T13:20:29+08:00
series:
  - 文檔
categories:
  - 短代碼
tags:
authors:
  - HugoMods
images:
---

## 語法

### 閉合語法

```markdown
{{</* kroki _type=[type] */>}}
DIAGRAM
{{</* /kroki */>}}
```

其與[代碼塊]({{< relref "docs/codeblock" >}})用法相似。

### 自閉合語法

```markdown
{{</* kroki _type=[type] _name=[name] /*/>}}
```

{{< page-resource-content "codes/syntax" >}}

{{% hugo/shortcode-params "codes/params.yaml" %}}

### 其他

你可以為圖表設置任意屬性，比如 `id`、`class` 和 `data-*` 等等。

## 示例

### 站點文件 Kroki 示例

{{< page-resource-content "codes/example-site-file" >}}

### 頁面文件 Kroki 示例

{{< page-resource-content "codes/example-page-file" >}}
