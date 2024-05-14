---
title: "Microsoft Clarity Module"
linkTitle: "Microsoft Clarity"
description: "This module offers support for Microsoft Clarity Analytics."
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: true
pinned: false
date: 2023-11-16T01:43:15+08:00
draft: false
series:
  - Docs
categories:
  - Modules
tags:
  - Analytics
  - Microsoft Clarity
authors:
  - HugoMods
images:
  - https://claritystatic.azureedge.net/images/homepageBannerV2.png
---

{{< module "github.com/hugomods/microsoft-clarity" >}}

## Installation

### 1.Import the Module

{{< bootstrap/config-toggle hugo >}}
[[module.imports]]
path = "github.com/hugomods/microsoft-clarity"
{{< /bootstrap/config-toggle >}}

### 2.Import the Partial

{{% skip-if-hugopress %}}

```go-html-template
<head>
  {{ partialCached "microsoft-clarity/index" . }}
</head>
```

## Site Parameters

| Parameter         |  Type  | Default | Description         |
| ----------------- | :----: | :-----: | ------------------- |
| `microsoft_clarity.id` | string |    -    | The measurement ID. |

{{< bootstrap/config-toggle hugo >}}
params:
  microsoft_clarity:
    id: XXXXXXXXXX
{{< /bootstrap/config-toggle >}}
