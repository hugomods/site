---
type: docs
date: 2024-10-07T22:55:15+08:00
title: Hugo Video.js 短代碼
linkTitle: 短代碼
description: 學習如何使用 Hugo Video.js 短代碼。
nav_icon:
  vendor: bs
  name: code-square
series:
  - 模塊
categories:
  - Video.js
  - 短代碼
tags:
  - 視頻
---

## 語法

{{% page-resource-content "data/syntax.md" false %}}

{{% hugo/shortcode-params data="data/params.yaml" %}}

## 示例

### MP4 視頻示例

{{< page-resource-content "data/example-mp4" >}}

### HLS 視頻示例

> [!NOTE]
> 當視頻 URL 以 `m3u8` 結尾，則 `type` 可選。

{{< page-resource-content "data/example-hls" >}}

### MPEG DASH 視頻示例

> [!NOTE]
> 當視頻 URL 以 `mpd` 結尾，則 `type` 可選。

{{< page-resource-content "data/example-mpeg-dash" >}}

### 長寬比示例

#### 長寬比 16:9

{{< page-resource-content "data/example-aspect-ratio-16x9" >}}

#### 長寬比 4:3

{{< page-resource-content "data/example-aspect-ratio-4x3" >}}

#### 長寬比 1x1

{{< page-resource-content "data/example-aspect-ratio-1x1" >}}

#### 長寬比 9:16

{{< page-resource-content "data/example-aspect-ratio-9x16" >}}
