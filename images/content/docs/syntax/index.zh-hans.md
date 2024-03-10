---
title: "Markdown 语法和 URL 语法"
linkTitle: "语法"
description: 详细地描述语法和 URL 语法。
nav_weight: 2
nav_icon:
  vendor: bs
  name: link
  className: text-primary
date: 2023-03-23T16:17:36+08:00
categories:
  - 文档
tags:
  - URL
  - Markdown
authors:
  - HugoMods
---

## Markdown 语法

```abnf
![alt](url [caption])
```

- `!`：必须以英文感叹号开始。
- `alt`：替代文本。
- `url`：图片 URL。
- `caption`：于图片下方显示的说明文字，可选。

## URL 语法

```abnf
URL = [scheme ":" "//"] path ["?" query] ["#" fragment]
```

- `scheme`：`http` 或 `https`，对于外部图片必填。
- `path`：图片的路径。
- `query`：紧跟着英文问号（`?`）的字符串，其为用 `&` 符号分隔开的键值对，比如 `foo=bar&fizz=buzz`。
- `fragment`：紧跟着 `#` 符号的片段 ID。

## 示例

{{% bootstrap/clearfix %}}
![示例](/images/great-wall.jpg?crop=300x120&brightness=-30#float-end "示例说明") 以 `![示例](/images/great-wall.jpg?crop=300x120&brightness=-30#float-end "示例说明")` 为例，其中：

- `示例` 表示替代文本。
- `path` 为 `/images/great-wall.jpg`。
- `query` 为 `crop=300x120&brightness=-30` 已将图片**裁剪**为 `300x120`，并修改**亮度**为 `-30`。
- `fragment` 为 `float-end` 以将图片于右侧浮动。
- `示例说明` 为图片下方显示的说明文字。
{{% /bootstrap/clearfix %}}
