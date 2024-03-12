---
title: "Hugo Env Shortcode"
linkTitle: "Env"
description: Get environment variables.
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-09-08T17:47:03+08:00
draft: false
series:
  - Docs
categories:
  - Shortcodes
tags:
  - Environment Variables
authors:
  - HugoMods
images:
---

## Use Cases

This shortcode is mainly used to read certain information from environment variables. Imagine you have a public site repository with your personal contact email address in it, and when someone else forks and deploys a new site and forgets to change the email address, it will undoubtedly bring you unnecessary contact and trouble.

When using GitHub Actions for deployment, you'll need to store the info in GitHub secrets, and pass it to environment variables.

## Shortcode Syntax

```markdown
{{</* env */>}}
```

## Shortcode Parameters

{{% shortcode-params "data/params.yaml" %}}

## Examples

```markdown
{{</* env "CI" */>}}
```

{{< env "CI" >}}
