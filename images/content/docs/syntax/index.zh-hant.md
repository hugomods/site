---
title: "Markdown 語法和 URL 語法"
linkTitle: "語法"
description: 詳細地描述語法和 URL 語法。
nav_weight: 2
nav_icon:
  vendor: bs
  name: link
  className: text-primary
date: 2023-03-23T16:17:36+08:00
categories:
  - 文檔
tags:
  - URL
  - Markdown
authors:
  - HugoMods
---

## Markdown 語法

```abnf
![alt](url [caption])
```

- `!`：必須以英文感嘆號開始。
- `alt`：替代文本。
- `url`：圖片 URL。
- `caption`：於圖片下方顯示的說明文字，可選。

## URL 語法

```abnf
URL = [scheme ":" "//"] path ["?" query] ["#" fragment]
```

- `scheme`：`http` 或 `https`，對於外部圖片必填。
- `path`：圖片的路徑。
- `query`：緊跟著英文問號（`?`）的字符串，其為用 `&` 符號分隔開的鍵值對，比如 `foo=bar&fizz=buzz`。
- `fragment`：緊跟著 `#` 符號的片段 ID。

## 示例

{{% bootstrap/clearfix %}}
![示例](/images/great-wall.jpg?crop=300x120&brightness=-30#float-end "示例說明") 以 `![示例](/images/great-wall.jpg?crop=300x120&brightness=-30#float-end "示例說明")` 為例，其中：

- `示例` 表示替代文本。
- `path` 為 `/images/great-wall.jpg`。
- `query` 為 `crop=300x120&brightness=-30` 已將圖片**裁剪**為 `300x120`，並修改**亮度**為 `-30`。
- `fragment` 為 `float-end` 以將圖片於右側浮動。
- `示例說明` 為圖片下方顯示的說明文字。
{{% /bootstrap/clearfix %}}
