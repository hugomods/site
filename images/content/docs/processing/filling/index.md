---
title: "Filling Images"
linkTitle: "Filling"
description: Crop and resize an image to match the given dimensions.
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
authors:
  - HugoMods
---

## Syntax

You must provide both width and height. Use the anchor[^1] option to change the crop box anchor point.

[^1]: The anchor determines the placement of the crop box. You may specify `TopLeft`, `Top`, `TopRight`, `Left`, `Center`, `Right`, `BottomLeft`, `Bottom`, `BottomRight`, or `Smart`. The default value is `Smart`.

```markdown
![Fill Image](featured.jpeg?fill=[width]x[height],[anchor])
```

- `[width]x[height]`: required.
- `[anchor]`: optional.

## Examples

{{< page-resource-content "data/examples" >}}
