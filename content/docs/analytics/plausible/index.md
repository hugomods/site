---
title: "Plausible Analytics"
linkTitle: "Plausible"
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-06-20T09:13:53+08:00
series:
  - Docs
categories:
  - Modules
tags:
  - Analytics
  - Plausible Analytics
authors:
  - HugoMods
images:
---

This module add Plausible Analytics for Hugo and HugoPress.

<!--more-->

{{% module "github.com/hugomods/plausible-analytics" %}}

## Installation

### Import the Module

{{< bs/config-toggle hugo >}}
module:
  imports:
    - path: github.com/hugomods/plausible-analytics
{{< /bs/config-toggle >}}

### Import the Script

{{% skip-if-hugopress %}}

```go-html-template
{{ partial "plausible-analytics/assets/js" . }}
```

## Site Configuration

| Parameter        |  Type   | Required |        Default         | Description                                |
| ---------------- | :-----: | :------: | :--------------------: | ------------------------------------------ |
| `endpoint`       | string  |    -     | `https://plausible.io` | The endpoint of Plausible Analytics.       |
| `file_downloads` | boolean |    -     |        `false`         | Whether to track file downloads.           |
| `outbound_links` | boolean |    -     |        `false`         | Whether to track clicks on outbound links. |
| `local`          | boolean |    -     |        `false`         | When `true`, track on `localhost`.         |

{{< bs/config-toggle hugo >}}
[params.plausible_analytics]
endpoint = "https://plausible.io"
file_downloads = false
outbound_links = false
local = false
{{< /bs/config-toggle >}}

## Page Configuration

You can also override the site configuration on specified pages by setting following parameters on front matter.

| Parameter        |  Type   | Required |    Default     | Description                                |
| ---------------- | :-----: | :------: | :------------: | ------------------------------------------ |
| `file_downloads` | boolean |    -     | Site settings. | Whether to track file downloads.           |
| `outbound_links` | boolean |    -     | Site settings. | Whether to track clicks on outbound links. |

{{< bs/config-toggle >}}
[plausible_analytics]
file_downloads = false
outbound_links = false
{{< /bs/config-toggle >}}
