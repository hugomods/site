---
title: "裁剪圖片"
linkTitle: "裁剪"
description: 裁剪圖像以匹配給定的尺寸而不調整大小。
nav_weight: 3
nav_icon:
  vendor: bs
  name: crop
date: 2023-03-26T23:13:36+08:00
categories:
  - 文檔
tags:
  - Markdown
  - 裁剪
authors:
  - HugoMods
---

## 語法

你必須同時提供寬度和高度，還可以使用 anchor[^1] 選項更改剪切框錨點。

```markdown
![Crop Image](featured.jpeg?crop=[width]x[height],[anchor])
```

- `[width]x[height]` 必填。
- `[anchor]` 可選。

[^1]: 錨點決定了剪切框的位置，你可以指定 `TopLeft`、`Top`、`TopRight`、`Left`、`Center`、`Right`、`BottomLeft`、`Bottom`、`BottomRight` 或 `Smart`，默認為 `Smart`。

## 示例

{{< page-resource-content "data/examples" >}}
