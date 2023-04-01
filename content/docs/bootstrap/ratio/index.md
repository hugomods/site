---
title: "Ratio Shortcode"
linkTitle: "Ratio"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: aspect-ratio
#   color: ''
featured: false
pinned: false
date: 2023-04-01T18:34:06+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Bootstrap
  - Ratio
authors:
  - HugoMods
images:
---

The ratio shortcode is perfect for responsively handling video or slideshow embeds based on the width of the parent.

<!--more-->

## Usage

```markdown
{{</* bs/ratio [size] */>}}
CONTENT HERE
{{</* /bs/ratio */>}}
```

### Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | :--: | :------: | :-----: | ----------- |
| `#0` | - | string | - | `16x9` | The aspect ratio, `1x1`, `4x3`, `16x9`, `21x9` and custom aspect ratios. |

## Examples

### Aspect Ratio 1x1

```markdown
{{</* bs/ratio 1x1 */>}}
  {{</* bilibili BV1iT411B7yH */>}}
{{</* /bs/ratio */>}}
```

{{< bs/ratio 1x1 >}}
  {{< bilibili BV1iT411B7yH >}}
{{< /bs/ratio >}}

### Aspect Ratio 4x3

```markdown
{{</* bs/ratio 4x3 */>}}
  {{</* bilibili BV1iT411B7yH */>}}
{{</* /bs/ratio */>}}
```

{{< bs/ratio 4x3 >}}
  {{< bilibili BV1iT411B7yH >}}
{{< /bs/ratio >}}

### Aspect Ratio 16x9

```markdown
{{</* bs/ratio 16x9 */>}}
  {{</* bilibili BV1iT411B7yH */>}}
{{</* /bs/ratio */>}}
```

{{< bs/ratio 16x9 >}}
  {{< bilibili BV1iT411B7yH >}}
{{< /bs/ratio >}}

### Aspect Ratio 21x9

```markdown
{{</* bs/ratio 21x9 */>}}
  {{</* bilibili BV1iT411B7yH */>}}
{{</* /bs/ratio */>}}
```

{{< bs/ratio 21x9 >}}
  {{< bilibili BV1iT411B7yH >}}
{{< /bs/ratio >}}
