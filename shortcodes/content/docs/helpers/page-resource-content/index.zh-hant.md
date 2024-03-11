---
title: "頁面資源內容"
linkTitle: 頁面資源內容
description: 用於呈現頁面資源內容的短代碼，這對重用內容塊非常有用，尤其是在編寫多語言文檔時。
nav_weight: 1
nav_icon:
  vendor: bs
  name: braces
date: 2024-03-11T13:06:19+08:00
series:
  - 文檔
categories:
  - 短代碼
tags:
  - Markdown
  - 頁面資源
authors:
  - HugoMods
images:
---

## 語法

```markdown
{{</* page-resource-content [name] */>}}
```

{{% bs/alert warning %}}
請不要使用 `md` 作為擴展名，如果你打算在多語言頁面上重用它。
{{% /bs/alert %}}

{{% params "data/params.yaml" %}}

## 示例

{{< page-resource-content "data/example" >}}
