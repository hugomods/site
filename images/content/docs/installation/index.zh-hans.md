---
title: "安装 Hugo 图片模块"
linkTitle: "安装"
description: 学习如何安装 Hugo 图片模块。
nav_weight: 1
nav_icon:
  vendor: bs
  name: cloud-download
  className: text-success
date: 2023-03-23T06:27:36+08:00
categories:
  - 文档
tags:
  - 安装
authors:
  - HugoMods
---

{{% hugo-module-requirements %}}

## 导入模块

{{< page-resource-content "codes/import" >}}

{{% bs/alert warning %}}
此模块建议在[图片渲染钩子](https://gohugo.io/render-hooks/images/)之上。
若你的主题有一个内置的渲染图像钩子，那么可能会发生冲突，在这种情况下，你需要将这个模块放在您的主题之上，以确保这个模块获得更高的优先级。
{{% /bs/alert %}}
