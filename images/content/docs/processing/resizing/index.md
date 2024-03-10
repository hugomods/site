---
title: "Resizing Images"
linkTitle: "Resizing"
description: Learn how to resizing images.
nav_weight: 1
nav_icon:
  vendor: bs
  name: arrows
date: 2023-03-24T23:13:36+08:00
categories:
  - Docs
tags:
  - Markdown
  - Resize
authors:
  - HugoMods
---

## Syntax

To resize images, you'll need to specify `width` and `height` query parameters.

{{< bootstrap/alert >}}
{{< markdownify >}}
The original size of public and external images will not be changed.
{{< /markdownify >}}
{{< /bootstrap/alert >}}

## Specify the Width and Preserve Ratio

{{< page-resource-content "data/example-width" >}}

## Specify the Height and Preserve Ratio

{{< page-resource-content "data/example-height" >}}

## Specify the Width and Height

{{< page-resource-content "data/example-width-height" >}}

## Resizing Public Images

{{< page-resource-content "data/example-public" >}}

## Resizing External Images

{{< bootstrap/alert info >}}
{{< markdownify >}}
It's recommend telling module the intrinsic size of external images by `naturalWidth` and `naturalHeight` query parameters.
{{< /markdownify >}}
{{< /bootstrap/alert >}}

{{< page-resource-content "data/example-external" >}}
