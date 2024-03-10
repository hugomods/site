---
title: "网易云音乐"
linkTitle: "网易云音乐"
description: 将网易云音乐播放器嵌入到 Markdown 内容的短代码，支持播放列表、专辑和单曲。
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
  - 文档
categories:
  - 短代码
tags:
  - 音乐
  - 网易云音乐
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{</* netease-cloud-music */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

### 带有标题的单曲

{{< page-resource-content "data/example-song-one" >}}

### 自定义宽高、带有标题的单曲

{{< page-resource-content "data/example-song-two" >}}

### 播放列表

{{< page-resource-content "data/example-playlist" >}}

### 专辑

{{< page-resource-content "data/example-album" >}}
