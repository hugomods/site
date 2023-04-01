---
title: "Bilibili"
linkTitle: "Bilibili"
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-04-01T18:18:08+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Bilibili
authors:
  - HugoMods
images:
---

This shortcode allows embedding the bilibili video in your content.

<!--more-->

## Usage

### Parameters

| Name | Position | Type | Required | Default | Description |
| ---- | :------: | :--: | :------: | :-----: | ----------- |
| `id` | `#0` | string | Y | - | The video ID, such as `BVXXXXXXXXXX`. |
| `fullscreen` | - | boolean | - | `true` | Allow fullscreen. |

## Examples

### Used with Ratio Shortcode

It's recommended that use the [ratio]({{< relref "docs/bootstrap/ratio" >}}) to wrap external videos.

```markdown
{{</* bs/ratio */>}}
  {{</* bilibili BV1iT411B7yH */>}}
{{</* /bs/ratio */>}}
```

{{< bs/ratio >}}
  {{< bilibili BV1iT411B7yH >}}
{{< /bs/ratio >}}

## Disable Fullscreen

```markdown
{{</* bs/ratio */>}}
  {{</* bilibili id=BV1iT411B7yH fullscreen=false */>}}
{{</* /bs/ratio */>}}
```

{{< bs/ratio >}}
  {{< bilibili id=BV1iT411B7yH fullscreen=false >}}
{{< /bs/ratio >}}
