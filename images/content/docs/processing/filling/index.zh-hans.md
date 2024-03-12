---
title: "填充图片"
linkTitle: "填充"
description: 裁剪和调整图像大小以匹配给定的尺寸。
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

## 语法

您必须同时提供宽度和高度，使用 anchor[^1] 选项更改剪切框锚点。

[^1]: 锚点决定了剪切框的位置，你可以指定 `TopLeft`、`Top`、`TopRight`、`Left`、`Center`、`Right`、`BottomLeft`、`Bottom`、`BottomRight` 或 `Smart`，默认为 `Smart`。

```markdown
![Fill Image](featured.jpeg?fill=[width]x[height],[anchor])
```

- `[width]x[height]` 必填。
- `[anchor]` 可选。

## 示例

{{< page-resource-content "data/examples" >}}
