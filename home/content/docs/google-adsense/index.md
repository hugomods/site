---
title: "Hugo Google Adsense Module"
linkTitle: "Google Adsense"
nav_weight: 1000
nav_icon:
  vendor: simple
  name: googleadsense
  color: '#4285f4'
featured: false
pinned: false
date: 2023-03-30T21:41:38+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - Google AdSense
authors:
  - HugoMods
images:
---

This module offers Google AdSense support for Hugo and [HugoPress]({{< ref "docs/hugopress" >}}).

<!--more-->

{{< module "github.com/hugomods/google-adsense" >}}

## Installation

### 1.Import the Module

{{< bootstrap/config-toggle hugo >}}
[[module.imports]]
path = "github.com/hugomods/google-adsense"
{{< /bootstrap/config-toggle >}}

### 2.Import the Partial

{{% skip-if-hugopress %}}

```go-html-template
<head>
  {{ partialCached "google-adsense/index" . }}
</head>
```

## Site Parameters

| Parameter         |  Type  | Default | Description         |
| ----------------- | :----: | :-----: | ------------------- |
| `google_adsense` | string |    -    | |
| `google_adsense_ad_blocking_detector` | boolean | `false` | When `true`, show up an ad blocking recovery message if ad blocker was detected on your site.
| `google_adsense_ad_blocking_detector_fail_safe` | boolean | `false` | When `true`, show up an blocked message in the case of `google_adsense_ad_blocking_detector` script was blocked.

{{< bootstrap/config-toggle hugo >}}
params:
  google_adsense: ca-pub-XXXXXXXXXXXXXXXX
{{< /bootstrap/config-toggle >}}
