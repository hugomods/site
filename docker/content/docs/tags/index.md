---
title: Image Tags
linkTitle: Image Tags
description: List of Hugo Docker images and tags (variants).
date: 2024-03-06T22:31:21+08:00
nav_weight: 2
nav_icon:
  vendor: bs
  name: tags
  className: text-success
categories:
  - Docs
tags:
  - Docker
  - Hugo
  - Images
  - Tags
---

## Explainations

- _Extended_ represents the extended version of Hugo.
- Image tags start with _reg_ represent the regular (standard) version of Hugo.
- Image tags end with _exts_ include not only the tools listed below, but also _Embedded Dart Sass_, _PostCSS CLI_, _Autoprefixer_, _PurgeCSS_ and _RTLCSS_.
- Image tags contain `node-lts` represent the LTS (long time support) version of Node.js.

{{% bs/alert warning %}}
Please note that _PostCSS CLI_, _Autoprefixer_, _PurgeCSS_ and _RTLCSS_ are installed globally.
{{% /bs/alert %}}

## Which Image Tags Should I Use?

Hugo Docker image tags selection order as follows.

1. Require Dart Sass, then go for [exts](#exts) tag.
1. Require Hugo Pipes to compile (transform) Sass/SCSS, then go for tags with _Extended_ enabled (without _reg_ prefix).
1. Require Hugo Modules, then go for tags with _Go_ enabled.
1. Require NPM to install dependencies, then go for tags with _NPM_ enabled.
1. Require Hugo's `--enableGitInfo` flag, then go for tags with _Git_ enabled.

{{% bs/alert info %}}
If you're not sure what those mean, you can either use the [exts](#exts) tag which meets most theme's requirements, or request help from the theme author.
{{% /bs/alert %}}

## Image Tags

{{% docker-image-tags %}}
