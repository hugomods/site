---
title: "Asciinema"
linkTitle: "Asciinema"
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-04-02T14:36:59+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Asciinema
  - Terminal
authors:
  - HugoMods
images:
---

This shortcode add support for the asciinema, a CLI tool records and share terminal sessions.

<!--more-->

## Usage

```markdown
{{</* asciinema [id] */>}}
```

### Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | :--: | :------: | :-----: | ----------- |
| `#0` | `id` | string | Y | | The asciicast ID. |
| | `theme` | string | | | `asciinema`, `tango`, `solarized-dark`, `solarized-light`, `monokai`. |
| | `autoplay` | boolean | | `false` | Whether to auto play. |
| | `speed` | number | | `1` | Playback speed. |
| | `cols` | number | | | Used to override width (in characters) of the emulated terminal. |
| | `rows` | number | | | Used to override height (in lines) of the emulated terminal. |

## Examples

```markdown
{{</* asciinema 573031 */>}}
```

{{< asciinema 573031 >}}

### Asciinema with Theme

```markdown
{{</* asciinema id=573031 theme=solarized-light */>}}
```

{{< asciinema id=573031 theme=solarized-light >}}

### Asciinema with Auto Play

```markdown
{{</* asciinema id=573031 autoplay=true */>}}
```

{{< asciinema id=573031 autoplay=true >}}

### Asciinema with Speed

```markdown
{{</* asciinema id=573031 speed=2.5 */>}}
```

{{< asciinema id=573031 speed=2.5 >}}

### Asciinema with Cols and Rows

```markdown
{{</* asciinema id=573031 cols=120 rows=20 */>}}
```

{{< asciinema id=573031 cols=120 rows=20 >}}
