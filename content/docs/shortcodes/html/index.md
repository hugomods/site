---
title: "HTML Shortcodes"
linkTitle: "HTML"
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-06-30T10:33:53+08:00
draft: false
series:
  - Docs
categories:
  - HTML
tags:
authors:
  - HugoMods
images:
---

The guide shows how to usee the HTML shortcodes to write HTML.

<!--more-->

## What's the Difference

The difference is that the HTML written in shortcodes will not be omitted when `markup.goldmark.renderer.unsafe` is `false`. For example.

```markdown
{{</* html/p */>}}Paragraph written in shortcode.{{</* /html/p */>}}

<p>Paragraph written in raw HTML.</p>
```

{{< html/p >}}Paragraph written in shortcode.{{< /html/p >}}

<p>Paragraph written in raw HTML.</p>

To get avoid omitting the raw HTML, you've to enable the `markup.goldmark.renderer.unsafe`.

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

```markdown
{{</* html/void _name=input type=password placeholder="Please enter the password" class="form-control mb-3" */>}}
```

{{< html/void _name=input type=password placeholder="Please enter the password" class="form-control mb-3" >}}

## Others

This module also ships with some handy shortcodes that don't require the `_name` parameter.

| Name       |
| ---------- |
| `html/div` |
| `html/p`   |

## Nested Example

```markdown
{{</* html/tag _name=div class="mb-3 text-center" */>}}
{{</* html/void _name=input name=name placeholder=Name */>}}
{{</* /html/tag */>}}
```

{{< html/tag _name=div class="mb-3 text-center" >}}
{{< html/void _name=input name=name placeholder=Name >}}
{{< /html/tag >}}
