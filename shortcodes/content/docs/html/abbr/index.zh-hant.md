---
title: "縮寫表"
linkTitle: "縮寫表"
description: "創建帶有標題的縮寫表。"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: alphabet
  className: 'text-info'
featured: false
pinned: false
date: 2023-11-24T09:52:19+08:00
draft: false
series:
  - 文檔
categories:
  - 短代碼
tags:
  - Abbreviations
  - Abbr
  - 縮寫
  - 縮寫表
authors:
  - HugoMods
images:
---

## 語法

```markdown
{{</* abbr [text] [title] */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 數據文件

數據文件應存放於 `data/abbreviations` 目錄，並以站點語言代碼進行命名，比如 `data/abbreviations/en.toml` 對應英文站點。

{{< page-resource-content "data/data-files" >}}

上述示例數據文件中，`Hugo` 和 `HugoMods` 就是短代碼的 `text`（鍵）。

## 示例

以上述示例數據文件作為例子。

### 使用數據文件

{{< page-resource-content "data/example" >}}

### 就地定義標題

{{< page-resource-content "data/example-title" >}}

### 不存在或者無效的縮寫

{{< page-resource-content "data/example-invalid" >}}
