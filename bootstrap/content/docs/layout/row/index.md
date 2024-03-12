---
title: "Bootstrap Row Shortcode"
linkTitle: "Row"
description: Shortcode to generate rows.
nav_weight: 20
nav_icon:
  vendor: bs
  name: list
date: 2023-06-29T08:49:25+08:00
series:
  - Docs
categories:
  - Shortcode
tags:
  - Row
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{%/* bs/row */%}}
COLUMNS
{{%/* /bs/row */%}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## Example

The following example shows _1_, _2_, _3_ columns per row on _small_, _medium_, and _large_ (or above) sized screen respectively.

{{< page-resource-content "data/example" >}}
