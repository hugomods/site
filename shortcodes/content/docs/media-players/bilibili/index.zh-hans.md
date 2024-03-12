---
title: "哔哩哔哩"
linkTitle: "哔哩哔哩"
description: 用于将哔哩哔哩视频嵌入到 Markdown 内容。
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
  - 文档
categories:
  - 短代码
tags:
  - 哔哩哔哩
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{</* bilibili */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

若你使用 Bootstrap，则推荐使用 [Ratio](https://bootstrap.hugomods.com/docs/ratio/) 短代码嵌套视频。

### 用 Ratio 短代码嵌套

{{< page-resource-content "data/example" >}}

### 禁止全屏

{{< page-resource-content "data/example-disable-fullscreen" >}}
