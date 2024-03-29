---
title: "Shortcode"
linkTitle: "Shortcode"
description: Generate Kroki diagrams by using shortcode.
nav_weight: 2
nav_icon:
  vendor: bs
  name: braces
  className: text-primary
date: 2024-03-15T13:20:29+08:00
series:
  - Docs
categories:
  - Shortcode
tags:
authors:
  - HugoMods
images:
---

## Syntax

### Closing Syntax

```markdown
{{</* kroki _type=[type] */>}}
DIAGRAM
{{</* /kroki */>}}
```

It's similar to the usage of [code block]({{< relref "docs/codeblock" >}}).

### Self-Closing Syntax

```markdown
{{</* kroki _type=[type] _name=[name] /*/>}}
```

{{< page-resource-content "codes/syntax" >}}

{{% hugo/shortcode-params "codes/params.yaml" %}}

### Others

You can set any attributes for diagrams, such as `id`, `class` and `data-*`.

## Examples

### Site's File Kroki Example

{{< page-resource-content "codes/example-site-file" >}}

### Page's File Kroki Example

{{< page-resource-content "codes/example-page-file" >}}
