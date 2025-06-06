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

## Explanations

- **Extended** represents the **extended** edition of Hugo.
- Image tags start with **std** represent the **standard** edition of Hugo.
- Image tags end with **exts** include not only the tools listed below, but also **Embedded Dart Sass**, **PostCSS CLI**, **Autoprefixer**, **PurgeCSS**, **RTLCSS**, **AsciiDoc** and **Pandoc**.
- Image tags contain `node-lts` represent the **LTS** (long time support) version of Node.js.
- Image tags contain `non-root` indicate the default user is non root [`hugo`]({{< relref "/docs/introduction#the-hugo-user" >}}).

{{% bs/alert warning %}}
Please note that **PostCSS CLI**, **Autoprefixer**, **PurgeCSS** and **RTLCSS** are installed globally.
{{% /bs/alert %}}

## Which Image Tags Should I Use?

Hugo Docker image tags selection order as follows.
 
1. Require Debian based images, then go for `debian` tags, for example, Playwright doesn't support Alpine natively.
1. Require nightly build version, then go for `nightly*` tags.
1. Require Dart Sass, then go for tags with **Dart Sass** enabled.
1. Require **LibSass** or **WebP** format when processing images, then go for tags with **Extended** enabled (without **std** prefix).
1. Require Hugo Modules, then go for tags with **Go** enabled.
1. Require NPM/Yarn to install dependencies, then go for tags with **Node.js** enabled.
1. Require Hugo's `--enableGitInfo` flag, then go for tags with **Git** enabled.
1. Require minimal image, then go for tags starts with `base` or `std-base`.

{{% bs/alert info %}}
If you're not sure what those mean, you can either use the [exts](#exts) tag which meets most theme's requirements, or request help from the theme author.
{{% /bs/alert %}}

## Image Tags

> [!TIP]
> You can [choose an image]({{< relref "/choose" >}}) based on their functional features.

{{% docker-image-tags %}}
