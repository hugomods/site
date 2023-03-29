---
title: "Hugo SEO Modules"
linkTitle: "SEO"
nav_weight: 1000
nav_icon:
  vendor: tabler
  name: seo
  color: green
featured: false
pinned: false
date: 2023-03-28T14:22:02+08:00
draft: false
series:
  - Docs
categories:
  - SEO
  - Module
tags:
  - Twitter Cards
  - Favicons
  - Open Graph
  - Alternatives
  - Schema
  - Translations
authors:
  - HugoMods
images:
---

This module ships with some sub modules to helps you generate SEO stuff, such as favicons, twitter cards, open graph, schema, alternatives and translations meta tags.

<!--more-->

## Installation


### 1. Import the Module

{{< bootstrap/config-toggle hugo >}}
[module.imports]
path = "MODULE_PATH"
{{< /bootstrap/config-toggle >}}

### 2. Include the Partial

> Skip this section if your theme supports [HugoPress](https://github.com/hugomods/hugopress), all partials will be included automatically.

```go
{{ partial "MODULE_PARTIAL" . }}
```

## Modules

### Base Module

{{< module "github.com/hugomods/seo/modules/base" >}}

1. Set the `lang` and `dir` attributes on `<html>` (HugoPress only).
2. Generate the `description` meta tag.
3. Generate the `noindex` meta tag if the `noindex` parameter is enabled.

| Partial                 |
| ------------------------ |
| `seo/modules/base/index` |

### Alternatives Module

{{< module "github.com/hugomods/seo/modules/alternatives" >}}

Generates alternative pages meta tags.

| Partial                      |
| ---------------------------- |
| `seo/modules/favicons/index` |

### Favicons Module

{{< module "github.com/hugomods/seo/modules/favicons" >}}

Generates favicons in multiple sizes base on the `assets/favicon.png`.

| Partial                      |
| ---------------------------- |
| `seo/modules/favicons/index` |

- The `assets/favicon.png` for generating icons in multiple sizes by default.
- The `assets/favicon.ico` or `static/favicon.ico` for classic browsers.
- The `assets/mask-icon.svg` for Safari pinned tab by default.

The following params begin with `params.seo.favicons`.

| Params            |  Type  |     Default     | Description           |
| ----------------- | :----: | :-------------: | --------------------- |
| `icon`            | String |  `favicon.png`  |
| `mask_icon`       | String | `mask-icon.svg` |
| `mask_icon_color` | String |    `#000000`    |
| `sizes`           | Array  |        -        |
| `sizes.size`      | String |        -        | For example, `32x32`. |
| `sizes.rel`       | String |     `icon`      |

{{< bootstrap/config-toggle hugo >}}
[[params.seo.favicons.sizes]]
size = '16x16'
[[params.seo.favicons.sizes]]
size = '32x32'
[[params.seo.favicons.sizes]]
size = '150x150'
[[params.seo.favicons.sizes]]
rel = 'apple-touch-icon'
size = '180x180'
[[params.seo.favicons.sizes]]
size = '192x192'
{{< /bootstrap/config-toggle >}}

### Open Graph Module

{{< module "github.com/hugomods/seo/modules/open-graph" >}}

Generate meta tags for [Open Graph](https://ogp.me/).

| Partial                        |
| ------------------------------ |
| `seo/modules/open-graph/index` |

### Schema Module

{{< module "github.com/hugomods/seo/modules/schema" >}}

Generate meta tags for [Schema](https://schema.org/).

| Partial                    |
| -------------------------- |
| `seo/modules/schema/index` |

### Translations Module

{{< module "github.com/hugomods/seo/modules/translations" >}}

Generate meta tags for localized pages, see [tell Google about localized versions of your page](https://developers.google.com/search/docs/specialty/international/localized-versions).

| Partial                          |
| -------------------------------- |
| `seo/modules/translations/index` |

### Twitter Cards Module

{{< module "github.com/hugomods/seo/modules/twitter-cards" >}}

Generate meta tags for [Twitter Card](https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/abouts-cards).

| Partial                           |
| --------------------------------- |
| `seo/modules/twitter-cards/index` |
