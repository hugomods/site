---
title: "網易雲音樂"
linkTitle: "網易雲音樂"
description: 將網易雲音樂播放器嵌入到 Markdown 內容的短代碼，支持播放列表、專輯和單曲。
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
  - 文檔
categories:
  - 短代碼
tags:
  - 音樂
  - 網易雲音樂
authors:
  - HugoMods
images:
---

## 語法

```markdown
{{</* netease-cloud-music */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

### 帶有標題的單曲

{{< page-resource-content "data/example-song-one" >}}

### 自定義寬高、帶有標題的單曲

{{< page-resource-content "data/example-song-two" >}}

### 播放列表

{{< page-resource-content "data/example-playlist" >}}

### 專輯

{{< page-resource-content "data/example-album" >}}
