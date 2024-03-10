---
title: "嗶哩嗶哩"
linkTitle: "嗶哩嗶哩"
description: 用於將嗶哩嗶哩視頻嵌入到 Markdown 內容。
nav_weight: 1000
nav_icon:
  vendor: simple
  name: bilibili
  color: '#00A1D6'
featured: false
pinned: false
date: 2023-04-01T18:18:08+08:00
draft: false
series:
  - 文檔
categories:
  - 短代碼
tags:
  - 嗶哩嗶哩
authors:
  - HugoMods
images:
---

## 語法

```markdown
{{</* bilibili */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

若你使用 Bootstrap，則推薦使用 [Ratio](https://bootstrap.hugomods.com/docs/ratio/) 短代碼嵌套視頻。

### 用 Ratio 短代碼嵌套

{{< page-resource-content "data/example" >}}

### 禁止全屏

{{< page-resource-content "data/example-disable-fullscreen" >}}
