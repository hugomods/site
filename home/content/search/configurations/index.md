---
type: docs
title: "Configurations"
nav_weight: 10
nav_icon:
  vendor: bs
  name: gear
  className: text-success
description: List of available site parameters and page parameters for the Hugo search module.
date: 2023-09-25T14:51:03+08:00
featured: false
pinned: false
draft: false
series:
  - Modules
categories:
  - Search
tags:
  - Parameters
authors:
  - HugoMods
images:
---

## Site Parameters

{{< bootstrap/config-toggle filename=hugo >}}
[params.search]
stall_threshold = 200
# ...
{{< /bootstrap/config-toggle >}}

{{% parameters "data/site-params.yaml" %}}

## Page Parameters

> AKA front matter.

{{% parameters "data/page-params.yaml" %}}
