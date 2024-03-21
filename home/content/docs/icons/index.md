---
title: Hugo Icons Modules
linkTitle: Icons
date: 2023-03-21T21:41:35+08:00
nav_weight: 10
nav_icon:
  vendor: fas
  name: icons
  color: "#dc3545"
featured: true
series:
  - Modules
  - Docs
categories:
  - Icons
tags:
  - Bootstrap Icons
  - Tabler Icons
  - Feather Icons
  - Font Awesome Icons
  - Simple Icons
  - Material Design Icons
authors:
  - HugoMods
redirect: https://icons.hugomods.com/
---

The Hugo icons module generates inline SVG icons.

<!--more-->

{{< module "github.com/hugomods/icons" >}}

## Features

- Compatible with any SVG icons vendors, such as Bootstrap icons, Simple icons, Font Awesome icons, Feather icons, Material Design icons and Tabler icons.
- No CSS required.
- No JS required.
- No Fonts required.
- Load icons on demand.
- Flexible: allow specifying the height, width, color and class name of the icon.
- [Icon shortcode]({{< ref "docs/icons#use-icons-via-shortcode" >}}).

## Icons Vendors

The list of supported icons vendors.

| Vendor | Vendor Name | Shorthand | Module Path | Version |
| ------ | :--: | :-------: | ----------- | ------- |
| Bootstrap Icons | `bootstrap` | `bs` | `github.com/hugomods/icons/vendors/bootstrap` | {{< icon-version bootstrap >}} |
| Feather Icons | `feather` | - | `github.com/hugomods/icons/vendors/feather` | {{< icon-version feather >}} |
| Font Awesome Brands Icons | `font-awesome-brands` | `fab` | `github.com/hugomods/icons/vendors/font-awesome` | {{< icon-version font-awesome >}} |
| Font Awesome Regular Icons | `font-awesome-regular` | `far` | `github.com/hugomods/icons/vendors/font-awesome` | {{< icon-version font-awesome >}} |
| Font Awesome Solid Icons | `font-awesome-solid` | `fas` | `github.com/hugomods/icons/vendors/font-awesome` | {{< icon-version font-awesome >}} |
| Lucide Icons | `lucide` | - | `github.com/hugomods/icons/vendors/lucide` | {{< icon-version lucide >}} |
| Material Design Icons | `mdi` | - | `github.com/hugomods/icons/vendors/mdi` | {{< icon-version mdi >}} |
| Simple Icons | `simple-icons` | `simple` | `github.com/hugomods/icons/vendors/simple-icons` | {{< icon-version simple-icons >}} |
| Tabler Icons | `tabler` | - | `github.com/hugomods/icons/vendors/tabler` | {{< icon-version tabler >}} |

<!--more-->

## Installation

Just import the [icons vendors](#icons-vendors) you want into configuration file.

{{< bootstrap/config-toggle filename=hugo >}}
[[module.imports]]
path = "github.com/hugomods/icons/vendors/bootstrap"

[[module.imports]]
path = "github.com/hugomods/icons/vendors/font-awesome"

[[module.imports]]
path = "github.com/hugomods/icons/vendors/simple-icons"
{{< /bootstrap/config-toggle >}}

## Styling the Icons

You may need to adjust your CSS like following to align the icon to vertical middle, for example,

```css
.hi-svg-inline {
  vertical-align: -0.125rem;
}
```

## Usages

### Use Icons via Templates (Partials)

```go-html-template
{{ $context := dict
  "vendor" "bootstrap"
  "name" "house"
}}
{{ partial "icons/icon" $context }}
```

#### Icons Partial's Context

| Name        | Required | Description                                                      |
| ----------- | :------: | ---------------------------------------------------------------- |
| `vendor`    |    Y     | The vendor name of icons.                                        |
| `name`      |    Y     | The icon name.                                                   |
| `size`      |    N     | The square icon size, default to `1em`.                          |
| `height`    |    N     | The height of icon, default to `1em`.                            |
| `width`     |    N     | The width of icon, default to `1em`.                             |
| `className` |    N     | The additional class names of `<svg>` tag after `hi-svg-inline`. |
| `color`     |    N     | The color of icon.                                               |

### Use Icons via Shortcode

| Parameter   | Position |  Type  | Required | Description              |
| ----------- | :------: | :----: | :------: | ------------------------ |
| `vendor`    |   `#1`   | String |    Y     | The icons vendor's name. |
| `name`      |   `#2`   | String |    Y     | The icon's name.         |
| `color`     |    -     | String |    -     | The icon's color.        |
| `className` |    -     | String |    -     | The icon's class name.   |
| `size`      |    -     | String |    -     | The square icon size.    |
| `width`     |    -     | String |    -     | The icon's width.        |
| `height`    |    -     | String |    -     | The icon's height.       |

```markdown
{{</* icons/icon bootstrap house */>}}
{{</* icons/icon vendor=bootstrap name=house color=red */>}}
{{</* icons/icon vendor=bootstrap name=house size=2em */>}}
{{</* icons/icon vendor=bootstrap name=house width=2em height=2em */>}}
```

{{< icons/icon bootstrap house >}}
{{< icons/icon vendor=bootstrap name=house color=red >}}
{{< icons/icon vendor=bootstrap name=house size=2em >}}
{{< icons/icon vendor=bootstrap name=house width=2em height=2em >}}

## Advanced

### Icons Functions

#### `icons/functions/svg-resource` Function

The `icons/functions/svg-resource` function accept `vendor` and `name` parameters and returns the corresponding icon SVG resource.

```go-html-template
{{ $res := dict "vendor" "bootstrap" "name" "house" }}
{{ with partialCached "icons/functions/svg-resource" $res $res }}
  <img src="{{ .RelPermalink }}" />
{{ end }}
```
