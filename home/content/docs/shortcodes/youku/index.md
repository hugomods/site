---
title: "YouKu"
linkTitle: "YouKu"
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-04-02T15:07:26+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - YouKu
authors:
  - HugoMods
images:
---

This shortcode allows embedding YouKu videos into content.

<!--more-->

## Usage

```markdown
{{</* youku [id] */>}}
```

### Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | :--: | :------: | :-----: | ----------- |
| `#0` | `id` | string | Y | | The video ID. |

## Examples

```markdown
{{</* youku XNTQwMTgxMTE2 */>}}
```

{{< youku XNTQwMTgxMTE2 >}}
