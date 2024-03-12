---
title: "Bilibili"
linkTitle: "Bilibili"
description: Shortcode to embed the Bilibili video into Markdown content.
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
  - Docs
categories:
  - Shortcode
tags:
  - Bilibili
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{</* bilibili */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## Examples

It's recommended that use the [Ratio](https://bootstrap.hugomods.com/docs/ratio/) to nest videos if you're using Bootstrap.

### Nested by Ratio Shortcode

{{< page-resource-content "data/example" >}}

### Fullscreen Disabled

{{< page-resource-content "data/example-disable-fullscreen" >}}
