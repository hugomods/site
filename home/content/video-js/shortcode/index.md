---
type: docs
date: 2024-10-07T22:55:15+08:00
title: Hugo Video.js Shortcode
linkTitle: Shortcode
description: Learn how to use Hugo Video.js shortcode.
nav_icon:
  vendor: bs
  name: code-square
series:
  - Modules
categories:
  - Video.js
  - Shortcode
tags:
  - Video
---

## Syntax

{{% page-resource-content "data/syntax.md" false %}}

{{% hugo/shortcode-params data="data/params.yaml" %}}

## Examples

### MP4 Video Example

{{< page-resource-content "data/example-mp4" >}}

### HLS Video Example

> [!NOTE]
> The `type` is optional if the video URL ends with `m3u8`.

{{< page-resource-content "data/example-hls" >}}

### MPEG DASH Video Example

> [!NOTE]
> The `type` is optional if the video URL ends with `mpd`.

{{< page-resource-content "data/example-mpeg-dash" >}}

### Aspect Ratio Examples

#### Aspect Ratio 16:9

{{< page-resource-content "data/example-aspect-ratio-16x9" >}}

#### Aspect Ratio 4:3

{{< page-resource-content "data/example-aspect-ratio-4x3" >}}

#### Aspect Ratio 1x1

{{< page-resource-content "data/example-aspect-ratio-1x1" >}}

#### Aspect Ratio 9:16

{{< page-resource-content "data/example-aspect-ratio-9x16" >}}
