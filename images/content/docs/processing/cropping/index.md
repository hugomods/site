---
title: "Cropping Images"
linkTitle: "Cropping"
description: Crop an image to match the given dimensions without resizing.
nav_weight: 3
nav_icon:
  vendor: bs
  name: crop
date: 2023-03-25T23:13:36+08:00
categories:
  - Docs
tags:
  - Markdown
  - Crop
authors:
  - HugoMods
---

## Syntax

You must provide both width and height. Use the anchor[^1] option to change the crop box anchor point.

```markdown
![Crop Image](featured.jpeg?crop=[width]x[height],[anchor])
```

- `[width]x[height]`: required.
- `[anchor]`: optional.

[^1]: The anchor determines the placement of the crop box. You may specify `TopLeft`, `Top`, `TopRight`, `Left`, `Center`, `Right`, `BottomLeft`, `Bottom`, `BottomRight`, or `Smart`. The default value is `Smart`.

## Examples

{{< page-resource-content "data/examples" >}}
