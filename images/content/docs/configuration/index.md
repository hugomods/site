---
title: "Configuration"
linkTitle: "Configuration"
description: The module supports Bootstrap v5 out-of-box, you'll need to tweak some configuration if you're not using Bootstrap.
nav_weight: 10
nav_icon:
  vendor: bs
  name: gear
date: 2023-03-25T22:13:36+08:00
categories:
  - Docs
tags:
  - Configuration
  - Bootstrap
authors:
  - HugoMods
---

## Configuration

{{< page-resource-content "data/config" >}}

{{< bs/alert warning >}}
{{< markdownify >}}
Since `v0.8.3`, the `params.images` was renamed to `params.hugomods.images`, to get rid of conflicting with some Hugo built-in templates, see https://github.com/hugomods/images/issues/26.
{{< /markdownify >}}
{{< /bs/alert >}}

{{% params "data/params.yaml" %}}
