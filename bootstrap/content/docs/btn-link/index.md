---
title: "Bootstrap Button Link Shortcode"
linkTitle: "Button Link"
description: Shortcode to generate button link.
nav_weight: 1000
nav_icon:
  vendor: bs
  name: link
  className: text-primary
date: 2023-04-10T08:49:25+08:00
categories:
  - Docs
tags:
  - Shortcode
  - Button
  - Link
authors:
  - HugoMods
images:
---

## Syntaxes

### Closing Syntax

```markdown
{{</* bs/btn-link */>}}
TEXT
{{</* /bs/btn-link */>}}
```

Recommended for rich button text, it's useful for the case of nesting shortcodes, such as [ico](https://icons.hugomods.com/docs/usages#use-icons-via-shortcode).

### Self-Closing Syntax

```markdown
{{</* bs/btn-link text=TEXT /*/>}}
```

Recommended for plain button text.

{{% hugo/shortcode-params "data/params.yaml" %}}

## Examples

### Self-Closing Button Link

{{< page-resource-content "data/example-self-closing" >}}

### Closing Button Link

{{< page-resource-content "data/example-closing" >}}

### Button Link Styles

{{< page-resource-content "data/example-styles" >}}

### Outline Button Link

{{< page-resource-content "data/example-outline" >}}

### Button Link Sizes

{{< page-resource-content "data/example-sizes" >}}

### Button Link with Extra Classes

{{< page-resource-content "data/example-class" >}}

### External and Internal Button Links

{{< page-resource-content "data/example-links" >}}
