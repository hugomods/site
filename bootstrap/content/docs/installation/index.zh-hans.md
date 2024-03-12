---
title: "安装 Hugo Bootstrap 模块"
linkTitle: "安装"
description: 学习如何安装 Hugo Bootstrap 模块。
nav_weight: 1
nav_icon:
  vendor: bs
  name: cloud-download
  className: text-success
date: 2023-03-24T11:27:36+08:00
categories:
  - 文档
tags:
  - 安装
authors:
  - HugoMods
---

{{% bs/alert warning %}}
请注意本模块并不会为你的站点设置 Bootstrap，你需要确保通过某种方式安装了 Bootstrap CSS 和 JS 组件。
{{% /bs/alert %}}

{{% hugo-module-requirements %}}

一些像 [Clearfix]({{< ref "docs/clearfix" >}}) 的短代码需要开启 `markup.goldmark.renderer.unsafe`。

{{% bs/alert warning %}}
当内容由你控制时，`markup.goldmark.renderer.unsafe` 并非不安全的。若内容是开放式创作，且无任何审查流程时，则请禁用之。
{{% /bs/alert %}}

{{< page-resource-content "codes/config" >}}

## 导入模块

{{< page-resource-content "codes/import" >}}

## 额外样式

尽管我们尽量不引入额外的样式，但还是需要一些[额外的样式](https://github.com/hugomods/bootstrap/tree/main/assets/mods/bootstrap/scss)来使短代码看起来更好。

你可以将这些样式复制到你的站点，又或者使用 Hugo Pipes（推荐）来编译。

{{< page-resource-content "codes/style" >}}

{{% bs/alert warning %}}
路径 `mods/bootstrap/scss/index` 是相对于 `/assets` 目录的，请根据主要样式的位置进行修改。
以 `assets/styles/main.scss` 为例，你需要将路径改为 `../mods/bootstrap/scss/index`。
{{% /bs/alert %}}

## 命名空间

该模块具有两个命名空间：`bs` 和 `bootstrap`，两者均有效，建议使用较短的名称空间。
