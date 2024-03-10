---
title: "Bootstrap Icon Grid Shortcode"
linkTitle: "Icon Grid"
description: Shortcode to generate icon grid, which supports icon, heading and description.
date: 2023-04-12T09:48:05+08:00
nav_weight: 1000
nav_icon:
  vendor: bs
  name: grid-3x3-gap
  className: text-success
series:
  - Docs
categories:
  - Shortcode
tags:
  - Icon Grid
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{</* bs/icon-grid [data] */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## Data

The data should be placed under the `/data` folder.

{{% params data="data/data-item-properties.yaml" heading="Data Entry Properties" headingStartLevel=3 %}}

{{% bs/alert warning %}}
{{% markdownify %}}
Please make sure the `description` doesn't contain links when the `linkText` is empty.
{{% /markdownify %}}
{{% /bs/alert %}}

## Example

### Example Data File

{{< page-resource-content "data/example-data" >}}

### Default Link Text

{{< page-resource-content "data/example" >}}

### Custom Link Text

{{< page-resource-content "data/example-link-text" >}}

### Empty Link Text

{{< page-resource-content "data/example-empty-link-text" >}}

### Align to Center

{{< page-resource-content "data/example-centered" >}}

### Smaller Gap

{{< page-resource-content "data/example-gap" >}}

### Without Border

{{< page-resource-content "data/example-border" >}}
