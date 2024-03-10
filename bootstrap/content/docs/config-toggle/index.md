---
title: "Bootstrap Config Toggle Shortcode"
linkTitle: "Config Toggle"
description: "Shortcode to generate code blocks in multiple languages from one code base, support TOML, JSON and YAML."
nav_weight: 1000
nav_icon:
  vendor: bs
  name: code
  color: '#ff4088'
date: 2023-03-24T11:32:34+08:00
categories:
  - Docs
tags:
  - Bootstrap
  - Shortcode
  - Code
  - Config
  - Toggle
  - TOML
  - YAML
  - JSON
authors:
  - HugoMods
---

## Syntax

```markdown
{{</* bs/config-toggle */>}}
PUT YAML/TOML/JSON CODE HERE.
{{</* /bs/config-toggle */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

{{% params data="data/site-params.yaml" heading="Site Parameters" %}}

{{< page-resource-content "data/config" >}}

## Examples

### Filename Example

{{< page-resource-content "data/example-filename" >}}

### Exclude and Sort Languages

{{< page-resource-content "data/example-langs" >}}

### Hugo Configuration Example

{{< page-resource-content "data/example-hugo-config" >}}

### Hugo Front Matter Example

{{< page-resource-content "data/example-hugo-front-matter" >}}
