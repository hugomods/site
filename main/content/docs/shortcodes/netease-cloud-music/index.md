---
title: "NetEase Cloud Music"
linkTitle: "NetEase Cloud Music"
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-04-01T14:51:36+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Music
  - NetEase Cloud Music
authors:
  - HugoMods
images:
---

The NetEase cloud music shortcode allows embedding the player in your content. Playlist, album and single song are supported.

<!--more-->

## Usage

### Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | :--: | :------: | :-----: | ----------- |
| `#0` | `id` | number | Y | - | The ID of playlist, album or song. |
| `#1` | `type` | number | - | `playlist` | `playlist`, `album` and `song`. |
| `#2` | `auto` | boolean | - | `false` | Auto play if true. |
| `#3` | `title` | string | - | `[type]'s [id]` | The title of frame. |
| - | `height` | number | - | `66` (song), `310` (others) | The height of player. |
| - | `width` | number | - | `100%` | The width of player. |

## Examples

### Song Auto Play with Title

```markdown
{{</* netease-cloud-music 1978593877 song true "Forget (Slowed Down) - Storm Lake" */>}}
```

{{< netease-cloud-music 1978593877 song true "Forget (Slowed Down) - Storm Lake" >}}

### Song with Width, Height and Title

```markdown
{{</* netease-cloud-music id=1367381077 type=song height=80 width=500 title="Exil - Hiboky" */>}}
```

{{< netease-cloud-music id=1367381077 type=song height=80 width=500 title="Exil - Hiboky" >}}

### Playlist

```markdown
{{</* netease-cloud-music 8271208484 */>}}
```

{{< netease-cloud-music 8271208484 >}}

### Album

```markdown
{{</* netease-cloud-music 138671335 album */>}}
```

{{< netease-cloud-music 138671335 album >}}
