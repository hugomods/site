---
title: "Asciinema"
linkTitle: "Asciinema"
description: Asciinema is a CLI tool records and share terminal sessions, you can embed asciinema videos into Markdown content with this shortcode.
nav_weight: 1000
nav_icon:
  vendor: simple
  name: asciinema
featured: false
pinned: false
date: 2023-04-02T14:36:59+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Asciinema
  - Terminal
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{</* asciinema [id] */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## Examples

### Default Asciinema

{{< page-resource-content "data/example" >}}

### Asciinema with Theme

{{< page-resource-content "data/example-theme" >}}

### Asciinema with Auto Play

{{< page-resource-content "data/example-autoplay" >}}

### Asciinema with Speed

{{< page-resource-content "data/example-speed" >}}

### Asciinema with Cols and Rows

{{< page-resource-content "data/example-cols-rows" >}}
