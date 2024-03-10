---
title: "裁剪图片"
linkTitle: "裁剪"
description: 裁剪图像以匹配给定的尺寸而不调整大小。
nav_weight: 3
nav_icon:
  vendor: bs
  name: crop
date: 2023-03-26T23:13:36+08:00
categories:
  - 文档
tags:
  - Markdown
  - 裁剪
authors:
  - HugoMods
---

## 语法

你必须同时提供宽度和高度，还可以使用 anchor[^1] 选项更改剪切框锚点。

```markdown
![Crop Image](featured.jpeg?crop=[width]x[height],[anchor])
```

- `[width]x[height]` 必填。
- `[anchor]` 可选。

[^1]: 锚点决定了剪切框的位置，你可以指定 `TopLeft`、`Top`、`TopRight`、`Left`、`Center`、`Right`、`BottomLeft`、`Bottom`、`BottomRight` 或 `Smart`，默认为 `Smart`。

## 示例

{{< page-resource-content "data/examples" >}}
