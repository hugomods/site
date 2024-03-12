---
title: "圖片類型"
linkTitle: "圖片類型"
description: 支持的圖片類型列表。
nav_weight: 3
nav_icon:
  vendor: bs
  name: images
  className: text-info
date: 2023-03-24T06:27:36+08:00
categories:
  - 文檔
tags:
  - 類型
authors:
  - HugoMods
---

## 站點圖片資源

存放於 `assets` 目錄下的圖片。
{ .lead }

你需要於 URL 的路徑前添加一個**前置斜槓**（`/`），以使用站點圖片資源。

{{< page-resource-content "data/site-resources-examples" >}}

## 頁面圖片資源

存放於[頁面目錄](https://gohugo.io/content-management/page-resources/)的圖片資源。
{ .lead }

你需要按照[頁面 bundles](https://gohugo.io/content-management/page-bundles/) 所示的結構進行組織頁面，比如：

{{< page-resource-content "data/page-bundle-structure" >}}

上述結構包含了一個頁面（`blog/hello`），其包含了兩個圖片資源：`foo.png` 和 `bar.png`。

這樣就可以在頁面內容文件（`blog/hello/index.md`）中呈現圖像。

{{< page-resource-content "data/page-resources-examples" >}}

## 公共圖片

存放於 `static` 目錄的圖片。
{ .lead }

{{< page-resource-content "data/public-images-examples" >}}

## 外部圖片

{{< page-resource-content "data/external-images-examples" >}}

## 侷限性

除了對齊和調整大小外，大多數處理方法只能處理**站點圖像資源**和**頁面圖像資源**。此外，對於**公共圖像**和**外部圖像**的大小調整是通過內聯樣式實現的。

### 掛載公共圖片

好消息是 Hugo 允許[掛載](https://gohugo.io/getting-started/directory-structure/#union-file-system) `static/*` 目錄，以使它們成為站點資源，這樣就可以使用其他處理方法了。

{{< page-resource-content "data/mounts" >}}

上述配置將 `static/uploads` 掛載到 `assets/uploads`，然後你就可以像使用站點圖片資源一樣使用這些圖片。

```markdown
![Sample](/uploads/images/sample.jpg?width=300px)
```
