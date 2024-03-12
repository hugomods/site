---
title: "Bootstrap Accordion Shortcode"
linkTitle: "Accordion"
description: |
  Shortcode to build vertically accordions, the FAQs is the most common use case.
nav_weight: 1000
nav_icon:
  vendor: bs
  name: chevron-expand
date: 2023-08-11T23:47:27+08:00
categories:
  - Docs
tags:
  - Bootstrap
  - Shortcodes
  - Accordion
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{</* bs/accordion */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## Data Files Mapping

{{< page-resource-content "data/data-files-mapping" >}}

{{% params data="data/data-item-properties.yaml" heading="Data Item Properties" %}}

### Data File Example

{{< page-resource-content "data/data-file-example" >}}

## Examples

### Default Accordion Example

{{< page-resource-content "data/example" >}}

### Flush Accordion Example

{{< page-resource-content "data/example-flush" >}}

### Flush Accordion Example with `alwaysOpen` Enabled

{{< page-resource-content "data/example-flush-always-open" >}}
