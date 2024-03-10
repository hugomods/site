---
title: "Shortcode Example"
linkTitle: Shortcode Example
description: When writing shortcode's documentation, we usually provide examples and their source code so that users can preview the results, read and copy the code, whereas this would require you to repeat a similar code twice. With this shortcode, you can type in the source code once to achieve this.
nav_weight: 1
nav_icon:
  vendor: bs
  name: code-square
date: 2024-03-10T13:42:19+08:00
series:
  - Docs
categories:
  - Shortcodes
tags:
  - Example
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{</* hugo/shortcode-example */>}}
ESCAPED SOURCE CODE HERE.
{{</* /hugo/shortcode-example */>}}
```

{{% bs/alert warning %}}
You MUST escape the source code by adding `/*` after opening delimiter (`{{</*` or `{{%`) and adding `*/` before closing delimiter (`*/>}}` or `%}}`).
{{% /bs/alert %}}

## Example

Let's take `param` as example.

{{< page-resource-content "data/example" >}}
