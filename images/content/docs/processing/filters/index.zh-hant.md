---
title: "圖片濾鏡"
linkTitle: "濾鏡"
description: 學習如何將濾鏡應用於圖片上，比如亮度、可見度、像素化等。
nav_icon:
  vendor: bs
  name: filter
date: 2023-03-27T11:23:36+08:00
categories:
  - 文檔
tags:
  - Markdown
  - 濾鏡
  - 亮度
  - 色彩平衡
  - 著色
  - 對比度
  - 灰度係數
  - 高斯模糊
  - 灰度化
  - 色調
  - 反色
  - 可見度
  - 像素化
  - 飽和度
  - 褪色
  - Sigmoid
  - 銳化
authors:
  - HugoMods
---

## 亮度

亮度 `brightness` 必須在 `(-100, 100)` 範圍內。

{{< page-resource-content "data/example-brightness" >}}

## 色彩平衡

色彩平衡 `colorBalance` 可創建一個改變圖像色彩平衡的濾鏡。每個顏色通道（紅、綠、藍）的百分比參數範圍必須是 `(-100, 500)`。

{{< page-resource-content "data/example-color-balance" >}}

## 著色

著色 `colorize` 可創建一個濾鏡，生成圖像的彩色版本。色調參數是色輪上的角度，範圍通常為 `(0, 360)`。飽和度參數的範圍必須是 `(0, 100)`。百分比參數指定效果的強度，範圍必須在 `(0, 100)` 之間。

{{< page-resource-content "data/example-colorize" >}}

## 對比度

對比度 `contrast` 範圍必須在 `(-100, 100)` 之間。

{{< page-resource-content "data/example-contrast" >}}

## 灰度係數

灰度係數 `gamma` 創建一個濾波器，對圖像進行伽瑪校正。伽瑪參數必須為正值。Gamma = 1 表示原始圖像。小於 1 的伽瑪值會使圖像變暗，大於 1 的伽瑪值會使圖像變亮。

{{< page-resource-content "data/example-gamma" >}}

## 高斯模糊

對圖像應用高斯模糊 `gaussianBlur`。

{{< page-resource-content "data/example-gaussian-blur" >}}

## 灰度化

`grayscale` 創建一個過濾器，該過濾器生成圖像的灰度版本。

{{< page-resource-content "data/example-grayscale" >}}

## 色調

色調 `hue` 創建一個旋轉圖像色調的過濾器。色相角度的偏移通常在 `-180` 到 `180` 之間。

{{< page-resource-content "data/example-hue" >}}

## 反色

反色 `invert` 濾鏡可創建一個否定圖像顏色的濾鏡。

{{< page-resource-content "data/example-invert" >}}

## 可見度

可見度 `opacity` 用於修改圖片的可見度。

{{< page-resource-content "data/example-opacity" >}}

## 像素化

像素化 `pixelate` 過濾器，將圖像像素化。

{{< page-resource-content "data/example-pixelate" >}}

## 飽和度

飽和度 `saturation` 創建一個過濾器來改變圖像的飽和度。

{{< page-resource-content "data/example-saturation" >}}

## 褪色

褪色 `sepia` 創建了一個過濾器，產生一個深褐色調的圖像版本。

{{< page-resource-content "data/example-sepia" >}}

## Sigmoid

`sigmoid` 創建了一個過濾器，該過濾器使用 Sigmoid 函數改變圖像的對比度，並返回調整後的圖像。這是一個非線性對比度的變化有用的照片調整，因為它保留了高光和陰影細節。

{{< page-resource-content "data/example-sigmoid" >}}

## 銳化

`unsharMask` 創建一個過濾器來銳化圖像。Sigma 參數用於高斯函數，影響效應半徑。西格瑪必須是積極的。銳化半徑大約等於3 * 西格瑪。Amount 參數控制邊框變暗和變亮的程度。一般在 `0.5` 到 `1.5` 之間。閾值參數控制將被銳化的最小亮度變化。通常在 `0` 到 `0.05` 之間。

{{< page-resource-content "data/example-unsharp-mask" >}}
