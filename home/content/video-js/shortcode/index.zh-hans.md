---
type: docs
date: 2024-10-07T22:55:15+08:00
title: Hugo Video.js 短代码
linkTitle: 短代码
description: 学习如何使用 Hugo Video.js 短代码。
nav_icon:
  vendor: bs
  name: code-square
series:
  - 模块
categories:
  - Video.js
  - 短代码
tags:
  - 视频
---

## 语法

{{% page-resource-content "data/syntax.md" false %}}

{{% hugo/shortcode-params data="data/params.yaml" %}}

## 示例

### MP4 视频示例

{{< page-resource-content "data/example-mp4" >}}

### HLS 视频示例

> [!NOTE]
> 当视频 URL 以 `m3u8` 结尾，则 `type` 可选。

{{< page-resource-content "data/example-hls" >}}

### MPEG DASH 视频示例

> [!NOTE]
> 当视频 URL 以 `mpd` 结尾，则 `type` 可选。

{{< page-resource-content "data/example-mpeg-dash" >}}

### 长宽比示例

#### 长宽比 16:9

{{< page-resource-content "data/example-aspect-ratio-16x9" >}}

#### 长宽比 4:3

{{< page-resource-content "data/example-aspect-ratio-4x3" >}}

#### 长宽比 1x1

{{< page-resource-content "data/example-aspect-ratio-1x1" >}}

#### 长宽比 9:16

{{< page-resource-content "data/example-aspect-ratio-9x16" >}}
