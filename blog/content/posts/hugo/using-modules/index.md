---
title: "How to Use Hugo Modules"
description: You'll need to make some minor preparations before using the Hugo modules.
date: 2023-03-26T01:03:47+08:00
draft: false
featured: true
pinned: false
series:
  - Tutorials
categories:
  - Module
tags:
authors:
  - HugoMods
images:
---

## Install Go

See [download and install Go](https://go.dev/doc/install) for details.

## Initialization

Firstly, we need to initialize your site or theme to be a module via `hugo mod init MODULE_PATH`.

The `MODULE_PATH` is the identifier of your theme or site, which is usually the repository URL that without protocol, for example,

{{< page-resource-content "codes/initialization" >}}

{{% bs/alert danger %}}
Please note that the `MODULE_PATH` *MUST be unique*, otherwise it would be conflicted with other modules.
{{% /bs/alert %}}

## Import Modules

Now you're able to import any modules your want, for example.

{{< page-resource-content "codes/import-modules" >}}
