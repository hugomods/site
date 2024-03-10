---
title: "填充圖片"
linkTitle: "填充"
description: 裁剪和調整圖像大小以匹配給定的尺寸。
nav_weight: 4
nav_icon:
  vendor: bs
  name: aspect-ratio-fill
date: 2023-03-25T23:13:36+08:00
categories:
  - Docs
tags:
  - Markdown
  - Fill
  - 填充
authors:
  - HugoMods
---

## 語法

您必須同時提供寬度和高度，使用 anchor[^1] 選項更改剪切框錨點。

[^1]: 錨點決定了剪切框的位置，你可以指定 `TopLeft`、`Top`、`TopRight`、`Left`、`Center`、`Right`、`BottomLeft`、`Bottom`、`BottomRight` 或 `Smart`，默認為 `Smart`。

```markdown
![Fill Image](featured.jpeg?fill=[width]x[height],[anchor])
```

- `[width]x[height]` 必填。
- `[anchor]` 可選。

## 示例

{{< page-resource-content "data/examples" >}}
