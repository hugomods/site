---
title: "Installation"
linkTitle: "Installation"
description: Learn how to install Hugo ECharts module.
nav_weight: 1
nav_icon:
  vendor: bs
  name: cloud-download
  className: text-success
date: 2024-03-14T13:11:19+08:00
series:
  - Docs
categories:
tags:
  - Installation
authors:
  - HugoMods
images:
---

{{% hugo-module-requirements %}}

## Import Module

{{< page-resource-content "data/config" >}}

{{% bs/alert %}}
Please import `github.com/hbstack/echarts` instead if you're using [HB Framework](https://hbstack.dev/) themes.
{{% /bs/alert %}}

## Include Templates

{{% skip-if-hugopress %}}

Include the `echarts/assets/script` template near the end of `<body>` element, for example.

{{% bs/alert %}}
If you don't know how, please request help from the theme author.
{{% /bs/alert %}}

{{< page-resource-content "data/templates" >}}
