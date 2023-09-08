---
title: "Hugo EmGitHub Shortcode"
linkTitle: "EmGitHub"
description: |
  Embed GitHub source file into HTML pages via the EmGitHub shortcode.
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
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

## Shortcode Syntax

```markdown
{{</* emgithub */>}}
```

## Shortcode Parameters

{{% shortcode-params "data/params.yaml" %}}

## Tweak the Styles

If it looks strange when embedded into the target web pages, you'll need to tweak the styles.
Learn more on [get started](https://github.com/yusanshi/emgithub#get-started/) section.

## Site Parameters

You can also tweak the default values of those parameters globally.

{{< bs/config-toggle hugo >}}
{{< file-content "data/hugo.toml" >}}
{{< /bs/config-toggle >}}

## Examples

### Markdown Example

```markdown
{{</* emgithub
  owner="hugomods"
  repo="shortcodes"
  file="CHANGELOG.md"
*/>}}
```

{{< emgithub
  owner="hugomods"
  repo="shortcodes"
  file="CHANGELOG.md"
>}}

### Raw Code Example

```markdown
{{</* emgithub
  owner=hugomods
  repo=shortcodes
  file="hugo.toml"
  type=code
*/>}}
```

{{< emgithub
  owner=hugomods
  repo=shortcodes
  file="hugo.toml"
  type=code
>}}
