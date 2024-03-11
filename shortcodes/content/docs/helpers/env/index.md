---
title: "Environment Variables"
linkTitle: "Environment Variables"
description: Shortcode to read environment variables.
nav_weight: 1000
nav_icon:
  vendor: bs
  name: terminal
  color: ''
featured: false
pinned: false
date: 2023-09-08T17:47:03+08:00
draft: false
series:
  - Docs
categories:
  - Shortcodes
tags:
  - Env
  - Environment Variables
authors:
  - HugoMods
images:
---

## Use Cases

This shortcode is mainly used to read certain information from environment variables. Imagine you have a public site repository with your personal contact email address in it, and when someone else forks and deploys a new site and forgets to change the email address, it will undoubtedly bring you unnecessary contact and trouble.

{{% bs/alert %}}
When using GitHub Actions for deployment, you'll need to store the info in GitHub secrets, and pass it to environment variables.
{{% /bs/alert %}}

## Syntax

```markdown
{{</* env */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## Examples

{{< page-resource-content "data/examples" >}}
