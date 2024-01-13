---
type: docs
title: "Bootstrap Image Grid Shortcode"
linkTitle: "Image Grid"
description: Display images in grid layout.
date: 2024-01-12T10:20:28+08:00
featured: false
pinned: false
draft: false
series:
categories:
  - Shortcodes
tags:
  - Bootstrap
  - Image
  - Grid
authors:
  - HugoMods
images:
nav_icon:
  vendor: bs
  name: images
---

## Shortcode Syntax

```markdown
{{</* bs/img-grid "data" */>}}
```

### Shortcode Parameters

#### `data`

The name of [data file](#data-file).

## Data File

The data files should be put into `/data` or page's folder.

### Image Properties

| Name | Type | Required | Description |
| --- | :-: | :-: | ---|
| `src` | string | Y | The image's source URL or image resources name. |
| `title` | string | Y | The image's alternative text and caption. |
| `url` | string | N | The URL of the element. |

## Examples

{{% bs/collapse "/data/img-grid-examples.yaml" %}}
```yaml
{{% file-content "/data/img-grid-examples.yaml" %}}
```
{{% /bs/collapse %}}

```markdown
{{</* bs/img-grid "img-grid-examples" */>}}
```

{{< bs/img-grid "img-grid-examples" >}}
