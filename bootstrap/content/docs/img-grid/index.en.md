---
title: "Bootstrap Image Grid Shortcode"
linkTitle: "Image Grid"
description: Shortcode to display images in grid layout.
date: 2024-01-12T10:20:28+08:00
series:
  - Docs
categories:
  - Shortcodes
tags:
  - Bootstrap
  - Image
  - Grid
authors:
  - HugoMods
images:
nav_weight: 1000
nav_icon:
  vendor: bs
  name: images
---

## Syntax

```markdown
{{</* bs/img-grid "data" */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## Data File

The data files should be put into `/data` or page's folder.

{{% params data="data/image-properties.yaml" heading="Image Properties" headingStartLevel=3 %}}

## Example

{{< page-resource-content "data/example" >}}
