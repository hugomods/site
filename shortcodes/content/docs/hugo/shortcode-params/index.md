---
title: "Shortcode Params"
linkTitle: Shortcode Params
description: Describe the parameter definitions of the Hugo shortcode, which is useful for writing shortcode's documentations.
nav_weight: 1
nav_icon:
  vendor: bs
  name: code-square
date: 2024-03-10T15:21:19+08:00
series:
  - Docs
categories:
  - Shortcodes
tags:
  - Parameters
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{%/* hugo/shortcode-params [data] */%}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

{{% params data="data/data-item-properties.yaml" heading="Data Item Properties" %}}

## Example

{{< page-resource-content "data/example" >}}
