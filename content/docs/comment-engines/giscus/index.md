---
title: "Hugo Giscus Module"
linkTitle: "Giscus"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: gem
featured: false
pinned: false
date: 2023-03-28T17:13:21+08:00
draft: false
series:
  - Docs
categories:
  - Module
  - Comment Engine
tags:
  - Giscus
authors:
  - HugoMods
images:
---

This module add support for [Giscus](https://giscus.app/), a comments system powered by [GitHub Discussions](https://docs.github.com/en/discussions). Let visitors leave comments and reactions on your website via GitHub!

<!--more-->

{{< module "github.com/hugomods/giscus" >}}

## Features

- Flexible and Configurable.
- JS APIs: change theme on the fly, it's usually used in the case of color(dark/light) changed.
- Multiple repos.

## Installation

> Requires extended Hugo and Go.

Import the `github.com/hugomods/giscus` into your site configuration.

{{< bootstrap/config-toggle hugo >}}
[[module.imports]]
path = "github.com/hugomods/giscus"
{{< /bootstrap/config-toggle >}}

## Site Parameters

See [how to configure Gisucs]({{< relref "blog/giscus" >}}).

| Name | Type | Required | Default | Description
|---|:-:|:-:|:-:|---
| `endpoint` | String | Y | `https://giscus.app/` | The client script endpoint.
| `repo` | String | Y | - | The GitHub repository, `user/repo`.
| `repo_id` | String | N | - | The GitHub repository ID.
| `category` | String | Y | `General` | Discussion category.
| `category_id` | String | Y | - | Discussion category ID.
| `mapping` | String | N | `pathname` | The mapping between the embedding page and the embedded discussion.
| `strict_matching` | String | N | `true` | Use strict title matching.
| `theme` | String | N | `preferred_color_scheme` |
| `input_position` | String | N | `top` | The input position. Available options: `top` or `bottom`.
| `reactions` | String | N | `true` | Enable reactions for the main post.
| `lazy_loading` | String | N | `true` | Load the comments lazily.
| `languages_mapping` | Object | N | - | The languages mapping from site language to Giscus language.

> See the [configuration](https://github.com/hugomods/giscus/blob/main/hugo.yaml) for details.

## Usage

> See the [example site](https://hugomods.github.io/giscus/) and it's [source code](https://github.com/hugomods/giscus/blob/main/exampleSite).

### Configuration

Firstly, we'll need to tweak the [site parameters](#site-parameters) listed above.

### Import Script

```go-html-template
{{ partial "giscus/script" . }}
```

Or with custom options.

```go-html-template
{{ partial "giscus/script-with-options" .Site.Params.blog.giscus }}
```

By default, the Giscus client will look up the placeholder element that with the `giscus` class, such as,

```html
<div class="giscus">YOUR COMMENTS WILL BE PLACED INSIDE</div>
```

Otherwise, the comments will be rendered where the script placed.

## JS APIs

You may want to change the Giscus theme on the fly, a common example is changing the Giscus to the corresponding theme when the user switches colors(dark/light).

```js
import Giscus from 'mods/giscus/js';

const giscus = new Giscus();
giscus.setTheme('dark');
```

You can find the real example on the [example site](https://github.com/hugomods/giscus/blob/main/exampleSite).
