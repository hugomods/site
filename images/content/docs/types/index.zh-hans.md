---
title: "图片类型"
linkTitle: "图片类型"
description: 支持的图片类型列表。
nav_weight: 3
nav_icon:
  vendor: bs
  name: images
  className: text-info
date: 2023-03-24T06:27:36+08:00
categories:
  - 文档
tags:
  - 类型
authors:
  - HugoMods
---

## 站点图片资源

存放于 `assets` 目录下的图片。
{ .lead }

你需要于 URL 的路径前添加一个**前置斜杠**（`/`），以使用站点图片资源。

{{< page-resource-content "data/site-resources-examples" >}}

## 页面图片资源

存放于[页面目录](https://gohugo.io/content-management/page-resources/)的图片资源。
{ .lead }

你需要按照[页面 bundles](https://gohugo.io/content-management/page-bundles/) 所示的结构进行组织页面，比如：

{{< page-resource-content "data/page-bundle-structure" >}}

上述结构包含了一个页面（`blog/hello`），其包含了两个图片资源：`foo.png` 和 `bar.png`。

这样就可以在页面内容文件（`blog/hello/index.md`）中呈现图像。

{{< page-resource-content "data/page-resources-examples" >}}

## 公共图片

存放于 `static` 目录的图片。
{ .lead }

{{< page-resource-content "data/public-images-examples" >}}

## 外部图片

{{< page-resource-content "data/external-images-examples" >}}

## 局限性

除了对齐和调整大小外，大多数处理方法只能处理**站点图像资源**和**页面图像资源**。此外，对于**公共图像**和**外部图像**的大小调整是通过内联样式实现的。

### 挂载公共图片

好消息是 Hugo 允许[挂载](https://gohugo.io/getting-started/directory-structure/#union-file-system) `static/*` 目录，以使它们成为站点资源，这样就可以使用其他处理方法了。

{{< page-resource-content "data/mounts" >}}

上述配置将 `static/uploads` 挂载到 `assets/uploads`，然后你就可以像使用站点图片资源一样使用这些图片。

```markdown
![Sample](/uploads/images/sample.jpg?width=300px)
```
