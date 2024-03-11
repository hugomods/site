---
title: "Abbreviations"
linkTitle: "Abbreviations"
description: "To create abbreviations with titles."
nav_weight: 1000
nav_icon:
  vendor: bs
  name: alphabet
  className: 'text-info'
featured: false
pinned: false
date: 2023-11-24T09:52:19+08:00
draft: false
series:
  - Docs
categories:
  - Shortcodes
tags:
  - Abbreviations
  - Abbr
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{</* abbr [text] [title] */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## Data Files

The data files should be placed under the `data/abbreviations` folder, and naming it in site language code, such as `data/abbreviations/en.toml` for English site.

{{< page-resource-content "data/data-files" >}}

The `Hugo` and `HugoMods` on above example data file are the `text` (key) of the shortcode.

## Examples

Let's say the data file as same as the above example data file.

### Abbreviations Using Site Data

{{< page-resource-content "data/example" >}}

### Abbreviations With Specified Title

{{< page-resource-content "data/example-title" >}}

### Abbreviations With Non-existent or Invalid Keys

{{< page-resource-content "data/example-invalid" >}}
