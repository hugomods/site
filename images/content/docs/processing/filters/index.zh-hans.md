---
title: "图片滤镜"
linkTitle: "滤镜"
description: 学习如何将滤镜应用于图片上，比如亮度、可见度、像素化等。
nav_icon:
  vendor: bs
  name: filter
date: 2023-03-27T11:23:36+08:00
categories:
  - 文档
tags:
  - Markdown
  - 滤镜
  - 亮度
  - 色彩平衡
  - 着色
  - 对比度
  - 灰度系数
  - 高斯模糊
  - 灰度化
  - 色调
  - 反色
  - 可见度
  - 像素化
  - 饱和度
  - 褪色
  - Sigmoid
  - 锐化
authors:
  - HugoMods
---

## 亮度

亮度 `brightness` 必须在 `(-100, 100)` 范围内。

{{< page-resource-content "data/example-brightness" >}}

## 色彩平衡

色彩平衡 `colorBalance` 可创建一个改变图像色彩平衡的滤镜。每个颜色通道（红、绿、蓝）的百分比参数范围必须是 `(-100, 500)`。

{{< page-resource-content "data/example-color-balance" >}}

## 着色

着色 `colorize` 可创建一个滤镜，生成图像的彩色版本。色调参数是色轮上的角度，范围通常为 `(0, 360)`。饱和度参数的范围必须是 `(0, 100)`。百分比参数指定效果的强度，范围必须在 `(0, 100)` 之间。

{{< page-resource-content "data/example-colorize" >}}

## 对比度

对比度 `contrast` 范围必须在 `(-100, 100)` 之间。

{{< page-resource-content "data/example-contrast" >}}

## 灰度系数

灰度系数 `gamma` 创建一个滤波器，对图像进行伽玛校正。伽玛参数必须为正值。Gamma = 1 表示原始图像。小于 1 的伽玛值会使图像变暗，大于 1 的伽玛值会使图像变亮。

{{< page-resource-content "data/example-gamma" >}}

## 高斯模糊

对图像应用高斯模糊 `gaussianBlur`。

{{< page-resource-content "data/example-gaussian-blur" >}}

## 灰度化

`grayscale` 创建一个过滤器，该过滤器生成图像的灰度版本。

{{< page-resource-content "data/example-grayscale" >}}

## 色调

色调 `hue` 创建一个旋转图像色调的过滤器。色相角度的偏移通常在 `-180` 到 `180` 之间。

{{< page-resource-content "data/example-hue" >}}

## 反色

反色 `invert` 滤镜可创建一个否定图像颜色的滤镜。

{{< page-resource-content "data/example-invert" >}}

## 可见度

可见度 `opacity` 用于修改图片的可见度。

{{< page-resource-content "data/example-opacity" >}}

## 像素化

像素化 `pixelate` 过滤器，将图像像素化。

{{< page-resource-content "data/example-pixelate" >}}

## 饱和度

饱和度 `saturation` 创建一个过滤器来改变图像的饱和度。

{{< page-resource-content "data/example-saturation" >}}

## 褪色

褪色 `sepia` 创建了一个过滤器，产生一个深褐色调的图像版本。

{{< page-resource-content "data/example-sepia" >}}

## Sigmoid

`sigmoid` 创建了一个过滤器，该过滤器使用 Sigmoid 函数改变图像的对比度，并返回调整后的图像。这是一个非线性对比度的变化有用的照片调整，因为它保留了高光和阴影细节。

{{< page-resource-content "data/example-sigmoid" >}}

## 锐化

`unsharMask` 创建一个过滤器来锐化图像。Sigma 参数用于高斯函数，影响效应半径。西格玛必须是积极的。锐化半径大约等于3 * 西格玛。Amount 参数控制边框变暗和变亮的程度。一般在 `0.5` 到 `1.5` 之间。阈值参数控制将被锐化的最小亮度变化。通常在 `0` 到 `0.05` 之间。

{{< page-resource-content "data/example-unsharp-mask" >}}
