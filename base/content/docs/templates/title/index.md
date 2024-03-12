---
title: Title
linkTitle: Title
description: Template to generate title for pages, that includes separator, paginator (i18n) and section's titles.
date: 2024-03-08T12:32:12+08:00
nav_icon:
  vendor: bs
  name: card-heading
categories:
  - Docs
tags:
  - Templates
  - Title
---

## Configuration

{{< page-resource-content "codes/config" >}}

{{% params data="params.yaml" headingStartLevel=3 %}}

## Usage

{{% bs/alert warning %}}
You'll need to wrap this template as the fallback via `block` syntax, and initialize the paginator within the title block if necessary, since the `.Paginator` was cached once initialized, so we MUST initialized it before calling the `base/title` template, otherwise the paginator will not work as expected.
{{% /bs/alert %}}

{{< page-resource-content "codes/usage" >}}

## Examples

{{< page-resource-content "codes/examples" >}}
