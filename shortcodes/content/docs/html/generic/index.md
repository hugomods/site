---
title: "Generic HTML Shortcodes"
linkTitle: "Generic"
description: List of generic HTML shortcodes to write HTML in Markdown content.
nav_weight: 1000
nav_icon:
  vendor: bs
  name: filetype-html
  color: ''
featured: false
pinned: false
date: 2023-06-30T10:33:53+08:00
draft: false
series:
  - Docs
categories:
  - Shortcodes
tags:
  - HTML
authors:
  - HugoMods
images:
---

## What's the Differences Between Shortcodes and Raw HTML?

The difference is that the raw HTML will be omitted by default. For example.

```markdown
{{</* html/p */>}}
Paragraph written in shortcode.
{{</* /html/p */>}}

<p>Paragraph written in raw HTML.</p>
```

The second one `<p>Paragraph written in raw HTML.</p>` will be omitted, to avoid this, you've to either use shortcodes or enable the `markup.goldmark.renderer.unsafe`.

## Shortcodes

### `html/tag`

The `html/tag` shortcode can be used to generate any HTML elements, it takes the `_name` as the HTML element name, such as `div`, `p` and so on. The other named parameters will be treated as element's attributes.

```markdown
{{</* html/tag _name=[name] [attr]=[val] */>}}
BODY
{{</* /html/tag */>}}
```

### `html/void`

Similar to the `html/tag` shortcode, `html/void` for generating void HTML elements, such as the `input` element.

```markdown
{{</* html/void _name=[name] [attr]=[val] */>}}
```

For example.

{{< page-resource-content "data/example-void" >}}

### Shortcuts

This module also ships with some handy shortcodes that don't require the `_name` parameter.

- `html/div`
- `html/p`

## Examples

### Nested Example

{{< page-resource-content "data/example-nested" >}}
