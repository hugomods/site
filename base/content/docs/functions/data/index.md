---
title: Data
linkTitle: Data
description: Function to reading JSON, TOML, YAML data from page resources and site data.
date: 2024-03-21T12:32:42+08:00
nav_icon:
  vendor: bs
  name: database-fill
categories:
  - Docs
tags:
  - Data
---

## Syntax

The function accepts `key` and `page` parameters.

{{< page-resource-content "codes/syntax" >}}

{{% bs/alert %}}
Please note that the `page` variable should be `.Page` in shortcodes.
{{% /bs/alert %}}

{{% params "codes/params.yaml" %}}

## Data Files Lookup Order

Let's take `content/example/index.md` page as an example, assume the `key` is `foo.bar`.

{{< page-resource-content "codes/data-files-lookup-order" >}}
