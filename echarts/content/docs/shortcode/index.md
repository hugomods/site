---
title: "Shortcode"
linkTitle: "Shortcode"
description: Using ECharts with shortcode.
nav_weight: 2
nav_icon:
  vendor: bs
  name: braces
  className: text-success
date: 2024-03-14T14:03:19+08:00
series:
  - Docs
categories:
tags:
  - Markdown
  - Shortcode
  - TOML
  - YAML
  - JSON
  - JavaScript
authors:
  - HugoMods
images:
---

## Syntax

### TOML/YAML/JSON Syntax

```markdown
{{</* echarts param1=value1 param2=value2 */>}}
CHART OPTIONS WRITTEN IN JSON/TOML/YAML
{{</* /echarts */>}}
```

### TOML/YAML/JSON Data File Syntax

```markdown
{{</* echarts data="" param1=value1 param2=value2 /*/>}}
```

### JavaScript Syntax

```markdown
{{</* echarts _js=true param1=value1 param2=value2 */>}}
CHART OPTIONS WRITTEN IN JSON/TOML/YAML
{{</* /echarts */>}}
```

### JavaScript File Syntax

```markdown
{{</* echarts _js=true _jsFile="" param1=value1 param2=value2 /*/>}}
```

{{% hugo/shortcode-params "codes/params.yaml" %}}

### Others

You're able to set any attributes for the chart containers, such as `class`, `id` and `data-*`.

## Examples

### JSON Example

{{< page-resource-content "codes/example-json" >}}

### JSON Page Data File Example

{{< page-resource-content "codes/example-json-page-data" >}}

### JSON Site Data File Example

{{< page-resource-content "codes/example-json-site-data" >}}

### JSON Example With Custom Attributes

{{< page-resource-content "codes/example-json-attrs" >}}

### TOML Example

{{< page-resource-content "codes/example-toml" >}}

### YAML Example

{{< page-resource-content "codes/example-yaml" >}}

### JavaScript Example

{{< page-resource-content "codes/example-js" >}}

### Page JavaScript File Example

{{< page-resource-content "codes/example-js-page-file" >}}

### Site JavaScript File Example

{{< page-resource-content "codes/example-js-site-file" >}}
