---
title: "Set Up Renovate for Hugo Modules and Modular Sites"
date: 2023-03-26T04:56:40+08:00
featured: false
pinned: false
draft: false
series:
  - Hugo
categories:
  - Module
tags:
  - Renovate
authors:
  - HugoMods
images:
---

[Renovate](https://docs.renovatebot.com/) is a bot for automated dependency updates, it's useful for Hugo modules and modular sites to check and update the dependencies automatically.

<!--more-->

## Install Renovate on Repository

Firstly, we need to install the [Renovate](https://github.com/apps/renovate) GitHub App on your module's and site's repositories.

## Configure Renovate

And then create the `renovate.json` file on repository root.

```json
{
  "$schema": "https://docs.renovatebot.com/renovate-schema.json",
  "extends": [
    "config:base"
  ],
  "ignorePaths": [
    "exampleSite/**"
   ],
  "packageRules": [
    {
      "matchManagers": ["gomod"],
      "matchDepTypes": ["indirect"],
      "enabled": true
    }
  ]
}
```

{{< bootstrap/collapse "ignorePaths" >}}
Tells Renovate to ignore those paths.
{{< /bootstrap/collapse >}}

{{% bootstrap/collapse "matchDepTypes" %}}
The `matchDepTypes: ["indirect"]` is required, since all of Hugo modules dependencies are *indirect*.
{{% /bootstrap/collapse %}}

## Validating Renovate

Once we set it up, Renovate will create an issue titled with [Dependency Dashboard](https://github.com/hugomods/site/issues/5) on your repository.

When a new version is detected, then Renovate will create a PR for it.
