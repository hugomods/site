---
title: "Bootstrap Toggle Shortcode"
linkTitle: "Toggle"
description: Shortcode to generate navs and tabs.
nav_weight: 1000
nav_icon:
  vendor: bs
  name: toggle-on
  className: text-primary
date: 2023-03-24T13:05:58+08:00
series:
  - Docs
categories:
  - Shortcodes
tags:
  - Bootstrap
  - Toggle
  - Tabs
  - Navs
authors:
  - HugoMods
images:
---

The [config toggle]({{< ref "docs/config-toggle" >}}) is useful, but it's limited to generate configuration code blocks in `YAML`, `TOML` and `JSON` languages. The `toggle*` shortcodes are designed to be more versatile.

## Toggle

{{% hugo/shortcode-params data="data/toggle-params.yaml" heading="Toggle Parameters" headingStartLevel=3 %}}

## Toggle Item

{{% hugo/shortcode-params data="data/toggle-params.yaml" heading="Toggle Item Parameters" headingStartLevel=3 %}}

## Examples

### Data File Example

{{< page-resource-content "data/example-data-file" >}}

### Nested Example

{{< page-resource-content "data/example-nested" >}}

### SDK Example with the Pills Style

{{< page-resource-content "data/example-sdk" >}}

### Non-fill, Align to Center With the Underline Style

{{< page-resource-content "data/example-other" >}}
