---
title: "调整图片尺寸"
linkTitle: "调整尺寸"
description: 学习如何调整图片尺寸。
nav_weight: 2
nav_icon:
  vendor: bs
  name: arrows
date: 2023-03-24T23:13:36+08:00
categories:
  - 文档
tags:
  - 图片
  - 尺寸
authors:
  - HugoMods
---

## 语法

你需要指定 `width` 和 `height` 查询参数以调整图片尺寸。

{{< bootstrap/alert >}}
{{< markdownify >}}
公共图片和外部图片的原始大小不会被改变。
{{< /markdownify >}}
{{< /bootstrap/alert >}}

## 指定宽度并保持长宽比

{{< page-resource-content "data/example-width" >}}

## 指定高度并保持长宽比

{{< page-resource-content "data/example-height" >}}

## 指定宽度和高度

{{< page-resource-content "data/example-width-height" >}}

## 指定图片质量

{{< page-resource-content "data/example-quality" >}}

## 调整公共图片尺寸

{{< page-resource-content "data/example-public" >}}

## 调整外部图片尺寸

{{< bootstrap/alert info >}}
{{< markdownify >}}
推荐使用 `naturalWidth` 和 `naturalHeight` 查询参数将外部图片的原始尺寸告知模块。
{{< /markdownify >}}
{{< /bootstrap/alert >}}

{{< page-resource-content "data/example-external" >}}
