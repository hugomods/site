---
type: docs
title: "Install Bootstrap Module"
linkTitle: "Installation"
nav_weight: 1
nav_icon:
  vendor: bs
  name: cloud-download
  className: text-success
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
aliases:
  - /en/docs/bootstrap/installation
---

This article shows how to install the Bootstrap module.

<!--more-->

{{< module "github.com/hugomods/bootstrap" >}}

## Requirements

Some shortcodes like [Clearfix]({{< ref "bootstrap/clearfix" >}}) require the `markup.goldmark.renderer.unsafe` to be enabled.

{{< bs/config-toggle filename=hugo >}}
[markup.goldmark.renderer]
unsafe = true
{{< /bs/config-toggle >}}

## Installation

{{< bs/config-toggle filename=hugo >}}
module:
  imports:
    - path: github.com/hugomods/bootstrap
{{< /bs/config-toggle >}}

## Additional Styles

Some [additional styles](https://github.com/hugomods/bootstrap/tree/main/assets/mods/bootstrap/scss) are provided to make some shortcodes look nicer.

To use it via Hugo Pipes, you'll need to import the SCSS files as follows.

```scss
@import 'mods/bootstrap/scss/index';
```

{{% bs/alert warning %}}
The path `mods/bootstrap/scss/index` is relative to the `/assets` folder, please change it according to your main style location. Take `assets/styles/main.scss` as example, you should change the path as `../mods/bootstrap/scss/index`.
{{% /bs/alert %}}

## Notes

This module has two namespaces: `bs` and `bootstrap`, both of them are valid, the short one is recommended.
