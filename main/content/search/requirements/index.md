---
type: docs
title: "Requirements"
description: The requirements of Hugo search module.
nav_weight: 1
nav_icon:
  vendor: bs
  name: card-checklist
  className: text-danger
date: 2023-09-17T23:26:58+08:00
featured: false
pinned: false
draft: false
series:
  - Modules
categories:
  - Search
tags:
  - Requirements
  - PostCSS
  - AutoPrefixer
  - RTLCSS
authors:
  - HugoMods
images:
---

## Hugo Version

Requires __extended__ Hugo `v0.110.0` or later.

## Hugo Module

[Hugo Module](https://gohugo.io/hugo-modules/use-modules/#prerequisite) are required, that is, you'll need the [Go installation](https://go.dev/doc/install) and initialize the site or theme to be a Hugo module, see also [how to use Hugo modules]({{< relref "/blog/hugo/using-hugo-modules" >}}).

## Node.js Packages

- PostCSS
- Autoprefixer
- RTLCSS

You can install those pacakges via one command.

```sh
npm i postcss-cli autoprefixer rtlcss
```
