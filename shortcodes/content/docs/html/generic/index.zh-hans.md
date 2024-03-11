---
title: "通用的 HTML 短代码"
linkTitle: "通用短代码"
description: 在 Markdown 内容中编写 HTML 的通用 HTML 短代码列表。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: filetype-html
  color: ''
featured: false
pinned: false
date: 2023-06-30T10:33:53+08:00
draft: false
series:
  - 文档
categories:
  - 短代码
tags:
  - HTML
authors:
  - HugoMods
images:
---

## 短代码和原始 HTML 的区别是什么？

两者区别在于默认情况下，原始 HTML 会被省略，举个例子。

```markdown
{{</* html/p */>}}
Paragraph written in shortcode.
{{</* /html/p */>}}

<p>Paragraph written in raw HTML.</p>
```

第二个 `<p>Paragraph written in raw HTML.</p>` 将会被省略，为了避免这种情况，你必须使用短代码或者启用 `markup.goldmark.renderer.unsafe`。

## 短代码

### `html/tag`

`html/tag` 可用于生成任意 HTML 元素，其中 `_name` 作为元素标签名称，比如 `div`、`p` 等等，其余的命名参数将视为元素的属性。

```markdown
{{</* html/tag _name=[name] [attr]=[val] */>}}
BODY
{{</* /html/tag */>}}
```

### `html/void`

类似于 `html/tag` 短代码，`html/void` 用于生成空元素，比如 `input`。

```markdown
{{</* html/void _name=[name] [attr]=[val] */>}}
```

举个例子。

{{< page-resource-content "data/example-void" >}}

### 快捷方式

该模块还内置了一些不需要 `_name` 参数的、便利的短代码。

- `html/div`
- `html/p`

## 示例

### 嵌套示例

{{< page-resource-content "data/example-nested" >}}
