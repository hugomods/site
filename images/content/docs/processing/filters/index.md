---
title: "Images Filters"
linkTitle: "Filters"
description: Learn how to apply filters on images, such as brightness, opacity, and pixelate so on.
nav_icon:
  vendor: bs
  name: filter
date: 2023-03-27T11:23:36+08:00
categories:
  - Docs
tags:
  - Markdown
  - Filters
  - Brightness
  - ColorBalance
  - Colorize
  - Contrast
  - Gamma
  - GaussianBlur
  - Grayscale
  - Hue
  - Invert
  - Pixelate
  - Saturation
  - Sepia
  - Sigmoid
  - UnsharpMask
authors:
  - HugoMods
---

## Brightness

The `brightness` must be in range `(-100, 100)`.

{{< page-resource-content "data/example-brightness" >}}

## ColorBalance

ColorBalance creates a filter that changes the color balance of an image. The percentage parameters for each color channel (red, green, blue) must be in range `(-100, 500)`.

{{< page-resource-content "data/example-color-balance" >}}

## Colorize

Colorize creates a filter that produces a colorized version of an image. The hue parameter is the angle on the color wheel, typically in range `(0, 360)`. The saturation parameter must be in range `(0, 100)`. The percentage parameter specifies the strength of the effect, it must be in range `(0, 100)`.

{{< page-resource-content "data/example-colorize" >}}

## Contrast

The `contrast` must be in range `(-100, 100)`.

{{< page-resource-content "data/example-contrast" >}}

## Gamma

Gamma creates a filter that performs a gamma correction on an image. The gamma parameter must be positive. Gamma = 1 gives the original image. Gamma less than 1 darkens the image and gamma greater than 1 lightens it.

{{< page-resource-content "data/example-gamma" >}}

## GaussianBlur

Applies a gaussian blur to an image.

{{< page-resource-content "data/example-gaussian-blur" >}}

## Grayscale

Grayscale creates a filter that produces a grayscale version of an image.

{{< page-resource-content "data/example-grayscale" >}}

## Hue

Hue creates a filter that rotates the hue of an image. The hue angle shift is typically in range `-180` to `180`.

{{< page-resource-content "data/example-hue" >}}

## Invert

Invert creates a filter that negates the colors of an image.

{{< page-resource-content "data/example-invert" >}}

## Opacity

Apply a opacity filter on an image.

{{< page-resource-content "data/example-opacity" >}}

## Pixelate

Pixelate creates a filter that applies a pixelation effect to an image.

{{< page-resource-content "data/example-pixelate" >}}

## Saturation

Saturation creates a filter that changes the saturation of an image.

{{< page-resource-content "data/example-saturation" >}}

## Sepia

Sepia creates a filter that produces a sepia-toned version of an image.

{{< page-resource-content "data/example-sepia" >}}

## Sigmoid

Sigmoid creates a filter that changes the contrast of an image using a sigmoidal function and returns the adjusted image. It’s a non-linear contrast change useful for photo adjustments as it preserves highlight and shadow detail.

{{< page-resource-content "data/example-sigmoid" >}}

## UnsharpMask

UnsharpMask creates a filter that sharpens an image. The sigma parameter is used in a gaussian function and affects the radius of effect. Sigma must be positive. Sharpen radius roughly equals 3 \* sigma. The amount parameter controls how much darker and how much lighter the edge borders become. Typically between `0.5` and `1.5`. The threshold parameter controls the minimum brightness change that will be sharpened. Typically between `0` and `0.05`.

{{< page-resource-content "data/example-unsharp-mask" >}}
