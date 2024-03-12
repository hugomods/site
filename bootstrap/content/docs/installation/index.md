---
title: "Install Hugo Bootstrap Module"
linkTitle: "Installation"
description: Learn how to install the Hugo Bootstrap module.
nav_weight: 1
nav_icon:
  vendor: bs
  name: cloud-download
  className: text-success
date: 2023-03-24T11:27:36+08:00
categories:
  - Docs
tags:
  - Installation
authors:
  - HugoMods
---

{{% bs/alert warning %}}
Please note that this module won’t set up Bootstrap for your site, you’d need to ensure that you’ve install the corresponding Bootstrap CSS and JavaScript components in some way.
{{% /bs/alert %}}

{{% hugo-module-requirements %}}

Some shortcodes like [Clearfix]({{< ref "docs/clearfix" >}}) require the `markup.goldmark.renderer.unsafe` to be enabled.

{{% bs/alert warning %}}
The `markup.goldmark.renderer.unsafe` is not `unsafe` if you're controlling the content, disable it if your content are open authoring without any review workflow.
{{% /bs/alert %}}

{{< page-resource-content "codes/config" >}}

## Import Module

{{< page-resource-content "codes/import" >}}

## Additional Styles

We tried to avoid introducing extra styles, but some [additional styles](https://github.com/hugomods/bootstrap/tree/main/assets/mods/bootstrap/scss) are still needed to make shortcodes look nicer.

You can either copy those styles into your sites or compile it with Hugo Pipes (recommend).

{{< page-resource-content "codes/style" >}}

{{% bs/alert warning %}}
The path `mods/bootstrap/scss/index` is relative to the `/assets` folder, please change it according to your main style location. Take `assets/styles/main.scss` as example, you should change the path as `../mods/bootstrap/scss/index`.
{{% /bs/alert %}}

## Namespaces

This module has two namespaces: `bs` and `bootstrap`, both of them are valid, the short one is recommended.
