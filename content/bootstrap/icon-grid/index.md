---
type: docs
title: "Bootstrap Icon Grid Shortcode"
linkTitle: "Icon Grid"
date: 2023-04-12T09:48:05+08:00
featured: false
pinned: false
draft: false
nav_icon:
  vendor: bs
  name: grid-3x3-gap
  className: text-success
series:
  - Docs
categories:
  - Shortcode
tags:
  - Icon Grid
  - Features
authors:
  - HugoMods
images:
---

This shortcode is used to generate icon grid, which supports icon, heading and description. It is usually used to display features.

<!--more-->

## Usage

```markdown
{{</* bs/icon-grid [data] */>}}
```

| Position | Name   |  Type  | Required | Default | Description                 |
| -------- | ------ | :----: | :------: | :-----: | --------------------------- |
| `#0`     | `data` | string |    Y     |    -    | The data name of data file. |

## Data

The data should be placed under the `/data` folder.

### Data Entry Properties

| Name          |  Type  | Required |   Default   | Description                                |
| ------------- | :----: | :------: | :---------: | ------------------------------------------ |
| `weight`      | number |    -     |      -      | The weight of data entry, used to sorting. |
| `title`       | string |    Y     |      -      | The heading.                               |
| `url`         | string |    -     |      -      | The heading URL.                           |
| `description` | string |    -     |      -      | The description.                           |
| `icon`        | object |    -     |      -      | Icon setting.                              |
| `icon.name`   | string |    Y     |      -      | The icon name.                             |
| `icon.vendor` | string |    -     | `bootstrap` | The icon vendor.                           |
| `icon.color`  | string |    -     |      -      | The icon color.                            |

## Examples

{{% bs/collapse "data/features.toml" primary true %}}

```toml
[fast]
weight = 1
title = "Fast"
description = "Google PageSpeed Insights scored perfect 💯 of four metrics on mobile and desktop."
[fast.icon]
name = "speedometer"
color = "green"

[responsive]
weight = 2
title = "Responsive"
description = "Mobile first, built on top of the Bootstrap v5.3."
[responsive.icon]
name = "bootstrap"
color = "#7952B3"

[foss]
weight = 3
title = "FOSS"
url = "https://github.com/hugomods"
description = "Free and open source software, code licensed MIT."
[foss.icon]
name = "code"
vendor = "fas"
color = "green"
```

{{% /bs/collapse %}}

{{< bs/icon-grid "features" >}}
