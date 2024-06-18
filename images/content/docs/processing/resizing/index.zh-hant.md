---
title: "調整圖片尺寸"
linkTitle: "調整尺寸"
description: 學習如何調整圖片尺寸。
nav_weight: 2
nav_icon:
  vendor: bs
  name: arrows
date: 2023-03-24T23:13:36+08:00
categories:
  - 文檔
tags:
  - 圖片
  - 尺寸
authors:
  - HugoMods
---

## 語法

你需要指定 `width` 和 `height` 查詢參數以調整圖片尺寸。

{{< bootstrap/alert >}}
{{< markdownify >}}
公共圖片和外部圖片的原始大小不會被改變。
{{< /markdownify >}}
{{< /bootstrap/alert >}}

## 指定寬度並保持長寬比

{{< page-resource-content "data/example-width" >}}

## 指定高度並保持長寬比

{{< page-resource-content "data/example-height" >}}

## 指定寬度和高度

{{< page-resource-content "data/example-width-height" >}}

## 指定圖片質量

{{< page-resource-content "data/example-quality" >}}

## 調整公共圖片尺寸

{{< page-resource-content "data/example-public" >}}

## 調整外部圖片尺寸

{{< bootstrap/alert info >}}
{{< markdownify >}}
推薦使用 `naturalWidth` 和 `naturalHeight` 查詢參數將外部圖片的原始尺寸告知模塊。
{{< /markdownify >}}
{{< /bootstrap/alert >}}

{{< page-resource-content "data/example-external" >}}
