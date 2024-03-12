---
title: "Bootstrap Col Shortcode"
linkTitle: "Col"
description: "Shortcode to generate grid column."
nav_weight: 30
nav_icon:
  vendor: bs
  name: layout-three-columns
featured: false
pinned: false
date: 2023-06-29T08:49:25+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Layout
  - Col
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{%/* bs/col */%}}
BODY
{{%/* /bs/col */%}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## Examples

### Equal Width Columns Example

{{< page-resource-content "data/example-equal-width" >}}

### Specified Width Columns Example

{{< page-resource-content "data/example-specified-width" >}}

### Columns Example with Offset

{{< page-resource-content "data/example-offset" >}}
