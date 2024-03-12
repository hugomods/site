---
title: "NetEase Cloud Music"
linkTitle: "NetEase Cloud Music"
description: Shortcode to embed NetEase cloud music player into Markdown content, which support playlist, album and single song.
nav_weight: 1000
nav_icon:
  vendor: simple
  name: neteasecloudmusic
  color: '#D43C33'
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

## Syntax

```markdown
{{</* netease-cloud-music */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## Examples

### Song Auto Play with Title

{{< page-resource-content "data/example-song-one" >}}

### Song with Width, Height and Title

{{< page-resource-content "data/example-song-two" >}}

### Playlist

{{< page-resource-content "data/example-playlist" >}}

### Album

{{< page-resource-content "data/example-album" >}}
