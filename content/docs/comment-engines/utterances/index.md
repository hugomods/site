---
title: "Hugo Utterances Module"
linkTitle: "Utterances"
nav_weight: 1000
nav_icon:
  vendor: fas
  name: comments
featured: false
pinned: false
date: 2023-03-28T17:45:15+08:00
draft: false
series:
  - Docs
categories:
  - Comment Engine
  - Module
tags:
  - Utterances
authors:
  - HugoMods
images:
---

This module add support for [Utterances](https://utteranc.es/) comments engine, a lightweight comments widget built on GitHub issues.

<!--more-->

{{< module "github.com/hugomods/utterances" >}}

## Features

- Flexible and Configurable.
- JS APIs: change theme on the fly, it's usually used in the case of color(dark/light) changed.

## Installation

> Requires extended Hugo and Go.

Append the `github.com/hugomods/utterances` to the `module.imports`.

```toml
[[module.imports]]
path = "github.com/hugomods/utterances"
```

## Site Parameters

| Name | Type | Requried | Default | Description
|---|:-:|:-:|:-:|---
| `endpoint` | String | Y | `https://utteranc.es/` | The client script endpoint.
| `repo` | String | Y | - | The GitHub repository, `user/repo`.
| `mapping` | String | N | `pathname` | The mapping between blog posts and GitHub issues. Available options: `pathname`, `url`, `title`, `og:title`.
| `theme` | String | N | `preferred-color-scheme` | Available options: `github-light`, `github-dark`, `github-dark-orange`, `icy-dark`, `dark-blue`, `photon-dark`, `preferred-color-scheme`, `boxy-light`, `gruvbox-dark`.
| `label` | String | N | `comments` | The label that will be assigned to issues created by Utterances.

> See the [configuration](https://github.com/hugomods/utterances/blob/main/hugo.toml) for details.

## Usage

> See the [example site](https://hugomods.github.io/utterances/) and it's [source code](https://github.com/hugomods/utterances/blob/main/exampleSite).

### Configuration

Firstly, we'll need to tweak the [site parameters](#site-parameters) listed above.

### Import Script

Then place the following partial to your template where you want the comments to appear.

```go-html-template
{{ partial "utterances/script" . }}
```

Or specify another options than `.Site.Params.utterances`, it's used to specify multiple Utterances configurations.

> The global options will be merged into the custom options.

```go-html-template
{{ partial "utterances/script-with-options" .Site.Params.blog.utterances }}
```

## JS APIs

You may want to change the Utterances theme on the fly, a common example is changing the Utterances to the corresponding theme when the user switches colors(dark/light).

```js
import Utterances from 'mods/utterances/js';

const utterances = new Utterances();
utterances.setTheme('github-dark');
```

You can find the real example on the [example site](https://hugomods.github.io/utterances/).
