---
title: "Install Bootstrap Module"
linkTitle: "Installation"
nav_weight: 1
nav_icon:
  vendor: bs
  name: cloud-download
featured: false
pinned: false
date: 2023-03-24T11:27:36+08:00
draft: false
series:
  - Docs
  - Module
categories:
  - Bootstrap
tags:
authors:
  - HugoMods
---

This article shows how to install the Bootstrap module.

<!--more-->

{{< module "github.com/hugomods/bootstrap" >}}

## Requirements

Some shortcodes like [Clearfix]({{< ref "docs/bootstrap/clearfix" >}}) require the `markup.goldmark.renderer.unsafe` to be enabled.

{{< bootstrap/config-toggle filename=hugo >}}
[markup.goldmark.renderer]
unsafe = true
{{< /bootstrap/config-toggle >}}

## Installation

{{< bootstrap/config-toggle filename=hugo >}}
module:
  imports:
    - path: github.com/hugomods/bootstrap
{{< /bootstrap/config-toggle >}}
