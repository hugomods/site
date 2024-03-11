---
title: "Details"
linkTitle: "Details"
description: Shortcode to generate HTML details tag, which is used to specify additional details that the user can open and close on demand.
nav_weight: 1000
nav_icon:
  vendor: bs
  name: card-text
  color: ''
featured: false
pinned: false
date: 2023-07-03T19:01:53+08:00
draft: false
series:
  - Docs
categories:
  - Shortcodes
tags:
  - HTML
  - details
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{%/* details [summary] [open] */%}}
CONTENT
{{%/* /details */%}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## Examples

### Collapsed Details Example

{{< page-resource-content "data/example-collapsed" >}}

### Expanded Details Example

{{< page-resource-content "data/example-expanded" >}}
