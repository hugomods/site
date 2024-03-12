---
title: "Asciinema"
linkTitle: "Asciinema"
description: Asciinema 是一个 CLI 工具记录和共享终端会话，你可以用这个短代码将 asciinema 视频嵌入到 Markdown 内容中。
nav_weight: 1000
nav_icon:
  vendor: simple
  name: asciinema
featured: false
pinned: false
date: 2023-04-02T14:36:59+08:00
draft: false
series:
  - 文档
categories:
  - 短代码
tags:
  - Asciinema
  - 终端
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{</* asciinema [id] */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

### 默认 Asciinema 示例

{{< page-resource-content "data/example" >}}

### 自定义主题的 Asciinema 示例

{{< page-resource-content "data/example-theme" >}}

### 自动播放的 Asciinema 示例

{{< page-resource-content "data/example-autoplay" >}}

### 自定义播放速度的 Asciinema 示例

{{< page-resource-content "data/example-speed" >}}

### 自定义宽高的 Asciinema 示例

{{< page-resource-content "data/example-cols-rows" >}}
