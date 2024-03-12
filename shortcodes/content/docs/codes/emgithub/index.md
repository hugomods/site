---
title: "EmGitHub"
linkTitle: "EmGitHub"
description: Shortcode to embed GitHub source file into Markdown content.
nav_weight: 1000
nav_icon:
  vendor: bs
  name: github
featured: false
pinned: false
date: 2023-09-08T12:49:11+08:00
draft: false
series:
  - Docs
categories:
  - Shortcodes
tags:
  - GitHub
  - EmGitHub
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{</* emgithub */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## Tweak the Styles

If it looks strange when embedded into the target web pages, you'll need to tweak the styles.
Learn more on [get started](https://github.com/yusanshi/emgithub#get-started/) section.

## Site Parameters

You can also tweak the default values of those parameters globally.

{{< page-resource-content "data/config" >}}

## Examples

### Markdown Example

{{< page-resource-content "data/example-markdown" >}}

### Raw Code Example

{{< page-resource-content "data/example-raw-code" >}}
