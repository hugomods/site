---
title: "Bootstrap 圖片網格短代碼"
linkTitle: "圖片網格"
description: 用於生成圖片網格的短代碼。
date: 2024-01-12T10:20:28+08:00
series:
  - 文檔
categories:
  - 短代碼
tags:
  - Bootstrap
  - 圖片
  - 網格
authors:
  - HugoMods
images:
nav_weight: 1000
nav_icon:
  vendor: bs
  name: images
---

## 語法

```markdown
{{</* bs/img-grid "data" */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 數據文件

數據文件需要存放於 `/data` 文件夾。

{{% params data="data/image-properties.yaml" heading="圖片屬性" headingStartLevel=3 %}}

## 示例

{{< page-resource-content "data/example" >}}
