---
title: "How to Use Hugo Modules"
date: 2023-03-26T01:03:47+08:00
draft: false
featured: false
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

You'll need to make some minor preparations before using the Hugo modules.

<!--more-->

## Install Go Binary

See [download and install Go](https://go.dev/doc/install) for details.

## Initialize Module

Firstly, we need to initialize the module for your site or theme via `hugo mod init MODULE_PATH`.

The `MODULE_PATH` is the identifier of your theme or site, which is usually the repository URL, for example,

```sh
hugo mod init example.com/user/repo
```

## Import Modules

And then import the modules your want.

{{< bootstrap/config-toggle hugo >}}
module:
  imports:
  - path: github.com/hugomods/icons/vendors/bootstrap
  - path: github.com/hugomods/images
  - path: github.com/hugomods/bootstrap
  - path: github.com/hugomods/katex
{{< /bootstrap/config-toggle >}}
