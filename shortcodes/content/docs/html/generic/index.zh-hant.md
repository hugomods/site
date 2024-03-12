---
title: "通用的 HTML 短代碼"
linkTitle: "通用短代碼"
description: 在 Markdown 內容中編寫 HTML 的通用 HTML 短代碼列表。
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
  - 文檔
categories:
  - 短代碼
tags:
  - HTML
authors:
  - HugoMods
images:
---

## 短代碼和原始 HTML 的區別是什麼？

兩者區別在於默認情況下，原始 HTML 會被省略，舉個例子。

```markdown
{{</* html/p */>}}
Paragraph written in shortcode.
{{</* /html/p */>}}

<p>Paragraph written in raw HTML.</p>
```

第二個 `<p>Paragraph written in raw HTML.</p>` 將會被省略，為了避免這種情況，你必須使用短代碼或者啟用 `markup.goldmark.renderer.unsafe`。

## 短代碼

### `html/tag`

`html/tag` 可用於生成任意 HTML 元素，其中 `_name` 作為元素標籤名稱，比如 `div`、`p` 等等，其餘的命名參數將視為元素的屬性。

```markdown
{{</* html/tag _name=[name] [attr]=[val] */>}}
BODY
{{</* /html/tag */>}}
```

### `html/void`

類似於 `html/tag` 短代碼，`html/void` 用於生成空元素，比如 `input`。

```markdown
{{</* html/void _name=[name] [attr]=[val] */>}}
```

舉個例子。

{{< page-resource-content "data/example-void" >}}

### 快捷方式

該模塊還內置了一些不需要 `_name` 參數的、便利的短代碼。

- `html/div`
- `html/p`

## 示例

### 嵌套示例

{{< page-resource-content "data/example-nested" >}}
