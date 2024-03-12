---
title: "Install Hugo Images Module"
linkTitle: "Installation"
description: Learn how to install the Hugo Images module.
nav_weight: 1
nav_icon:
  vendor: bs
  name: cloud-download
  className: text-success
date: 2023-03-23T06:27:36+08:00
categories:
  - Docs
tags:
  - Installation
authors:
  - HugoMods
---

{{% hugo-module-requirements %}}

## Import Module

{{< page-resource-content "codes/import" >}}

{{% bs/alert warning %}}
This module was built on top of [image render hook](https://gohugo.io/render-hooks/images/).
If your theme has a built-in `render-image` hook, then a conflict may occur, in this case, you'll need to put this module above your theme, to make sure this module got a higher priority.
{{% /bs/alert %}}
