---
title: "Asciinema"
linkTitle: "Asciinema"
description: Asciinema 是一個 CLI 工具記錄和共享終端會話，你可以用這個短代碼將 asciinema 視頻嵌入到 Markdown 內容中。
nav_weight: 1000
nav_icon:
  vendor: simple
  name: asciinema
featured: false
pinned: false
date: 2023-04-02T14:36:59+08:00
draft: false
series:
  - 文檔
categories:
  - 短代碼
tags:
  - Asciinema
  - 終端
authors:
  - HugoMods
images:
---

## 語法

```markdown
{{</* asciinema [id] */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

### 默認 Asciinema 示例

{{< page-resource-content "data/example" >}}

### 自定義主題的 Asciinema 示例

{{< page-resource-content "data/example-theme" >}}

### 自動播放的 Asciinema 示例

{{< page-resource-content "data/example-autoplay" >}}

### 自定義播放速度的 Asciinema 示例

{{< page-resource-content "data/example-speed" >}}

### 自定義寬高的 Asciinema 示例

{{< page-resource-content "data/example-cols-rows" >}}
