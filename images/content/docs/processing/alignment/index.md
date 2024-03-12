---
title: "Images Alignment"
linkTitle: "Alignment"
description: Learn how to align images to center, float images on left or right.
nav_weight: 1
nav_icon:
  vendor: bs
  name: text-left
date: 2023-03-24T22:13:36+08:00
categories:
  - Docs
tags:
  - Markdown
  - Floating
  - Alignment
  - Float Left
  - Float Right
authors:
  - HugoMods
---

## URL Fragments

URL fragment ID is used to align images, which `#center`, `#float-start` and `#float-end` represents align center, float start (left) and float end (right) respectively.

## Aligning Images to Center

Adding the `#center` fragment ID for aligning images to the center.

![Center](/images/great-wall.jpg?crop=200x120#center "![Center](/images/great-wall.jpg#center)")

## Floating Images to Start (Left)

Adding the `#float-start` fragment ID for floating images to the start (left). You may need to [clear](https://developer.mozilla.org/en-US/docs/Web/CSS/clear) to avoid breaking your layout, for Bootstrap users, you could wrap the content inside the [bs/clearfix](https://bootstrap.hugomods.com/docs/clearfix/) shortcode.

{{< page-resource-content "data/example-float-start" >}}

## Floating Images to End (Right)

Similarly, we can also float images to the end (right) by adding the `#float-end` fragment ID.

{{< page-resource-content "data/example-float-end" >}}
