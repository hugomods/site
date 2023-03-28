---
title: "Hugo Gravatar Module"
linkTitle: "Gravatar"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: wordpress
featured: false
pinned: false
date: 2023-03-28T19:47:31+08:00
draft: false
series:
  - Docs
categories:
tags:
authors:
  - HugoMods
images:
---

This module ships with several partials for [Gravatar](https://en.gravatar.com/).

<!--more-->

{{< module "github.com/hugomods/gravatar" >}}

## Installation

> Requires extended Hugo and Go.

Import the `github.com/hugomods/gravatar` module.

{{< bootstrap/config-toggle hugo >}}
import:
  modules:
    - path: "github.com/hugomods/gravatar"
{{< /bootstrap/config-toggle >}}

## Site Parameters

> The following parameters can be overridden by [partials' parameters](#partials-parameters).

| Name | Type | Default | Description
|---|:-:|:-:|---
| `default` | String | `mp` | The default image. Available options: `404`, `mp`, `identicon`, `monsterid`, `wavatar`, `retro`, `robohash`, `blank` or an image URL.
| `forceDefault` | Boolean | `false` | Force the default image to always load.
| `size` | Integer | `80` | Single pixel dimension, since the images are square.
| `rating` | String | - | Available options: `g`, `pg`, `r` and `x`.
| `className` | String | `gravatar-img` | The class name of img tag.

{{< bootstrap/config-toggle hugo >}}
params:
  gravatar:
    default: mp
{{< /bootstrap/config-toggle >}}

See [configuration](https://github.com/hugomods/gravatar/blob/main/hugo.yml) and [Gravatar image request](https://en.gravatar.com/site/implement/images/) for details.

## Partials

| Partial | Description | Example
|---|---|---
| `gravatar/avatar` | renders a Gravatar image by a raw email address. | `{{ partial "gravatar/avatar" "user@example.com" }}`
| `gravatar/avatar-hash` | renders a Gravatar image by a MD5 encrypted email address hash. | `{{ partial "gravatar/avatar-hash" "e7501ec2b3cd95d6af8964743c1d27c7" }}`
| `gravatar/avatar-params` | allow specifying the default image, image size, rating and class name. | `{{ partial "gravatar/avatar-params" $params }}`, see [partials' parameters](#partials-parameters).
| `gravatar/avatar-url` | returns the Gravatar image URL instead of img tag. | `{{ partial "gravatar/avatar-url" $params }}`, see [partials' parameters](#partials-parameters).

You can find more examples on https://hugomods.github.io/gravatar/.

### Partials' Parameters

> The following parameters will override the global parameters if present.

| Name | Type | Description
|---|:-:|---
| `Id` | String | The MD5 encrypted email address hash, you **MUST** provide one of the `Id` or `Email`.
| `Email` | String | The raw email address.
| `Default` | String | The default image.
| `ForceDefault` | Boolean | Force the default image to always load.
| `Size` | Integer | The image size.
| `Rating` | String | The image rating.
| `ClassName` | String | The class name of img tag. Doesn't work with the `gravatar/avatar-url` partial.

```go-html-template
{{ $params := dict (
    "Id" "e7501ec2b3cd95d6af8964743c1d27c7"
    "Size" 120
    "Default" "monsterid"
    "ForceDefault" true
    "Rating" "x"
    "ClassName" "avatar-img-circle"
) }}
{{ partial "gravatar/avatar-params" $params }}
{{ partial "gravatar/avatar-url" $params }}
```
