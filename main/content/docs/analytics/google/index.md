---
title: "Google Analytics"
linkTitle: "Google"
nav_weight: 1000
# nav_icon:
#   vendor: simple
#   name: googleanalytics
#   color: "#e37400"
featured: false
pinned: false
date: 2023-03-29T10:14:12+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - Google Analytics
authors:
  - HugoMods
images:
aliases:
  - /en/docs/google-analytics
---

This module offers support for Google Analytics. It's built on top of Hugo internal Google Analytics template, and port it for [HugoPress]({{< ref "docs/hugopress" >}}).

<!--more-->

{{< module "github.com/hugomods/google-analytics" >}}

## Installation

### 1.Import the Module

{{< bootstrap/config-toggle hugo >}}
[[module.imports]]
path = "github.com/hugomods/google-analytics"
{{< /bootstrap/config-toggle >}}

### 2.Import the Partial

{{% skip-if-hugopress %}}

```go-html-template
<head>
  {{ partialCached "google-analytics/index" . }}
</head>
```

## Site Configuration

| Parameter         |  Type  | Default | Description         |
| ----------------- | :----: | :-----: | ------------------- |
| `googleAnalytics` | string |    -    | The measurement ID. |

{{< bootstrap/config-toggle hugo >}}
googleAnalytics: G-XXXXXXXXXX
{{< /bootstrap/config-toggle >}}

## Page Parameters

| Name | Type | Default | Description |
| ---- | :--: | :-----: | ----------- |
| `analyze` | boolean | `true` | Exclude pages from being tracked if `false`. |
