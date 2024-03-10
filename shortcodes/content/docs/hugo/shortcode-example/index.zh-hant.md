---
title: "短代碼例子"
linkTitle: 短代碼例子
description: 在編寫短代碼的文檔時，我們通常會提供示例及其源代碼，以便用戶可以預覽結果、閱讀和複製代碼，而這將需要你重複相似的代碼兩次。有了這個短代碼，你僅需鍵入一次源代碼則可以實現這一點。 
nav_weight: 1
nav_icon:
  vendor: bs
  name: code-square
date: 2024-03-10T13:42:19+08:00
series:
  - 文檔
categories:
  - 短代碼
tags:
  - 例子
authors:
  - HugoMods
images:
---

## 語法

```markdown
{{</* hugo/shortcode-example */>}}
轉義後的源代碼
{{</* /hugo/shortcode-example */>}}
```

{{% bs/alert warning %}}
你必須通過於開始分隔符（`{{</*` 或 `{{%`）之前添加 `/*` 和於閉合分隔符（`*/>}}` 或 `%}}`）之前添加 `*/` 來轉義源代碼。
{{% /bs/alert %}}

## 示例

以 `param` 為例。

{{< page-resource-content "data/example" >}}
