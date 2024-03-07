---
title: "Merge Renovate's PRs via Mergify Automatically"
date: 2023-03-29T13:21:09+08:00
featured: false
pinned: false
draft: false
series:
categories:
tags:
  - Mergify
  - Renovate
authors:
  - HugoMods
images:
---

The other day I successfully set up [Renovate]({{< relref "posts/hugo/renovate-module-dependencies" >}}) (automated dependency update application) for my Hugo modules and modular sites. But I soon realized that manually merging these PRs was very tedious. So I started looking for a way to automatically merge PRs.

<!--more-->

## What's wrong with Renovate's built-in Auto Merge?

The first thing that came to mind was Renovate's own auto-merge feature, but it takes a long time to merge a PR, which is not what I was expecting.

## Mergify

So I started looking for alternatives from GitHub marketplace, and give the most popular one - [Mergify](https://github.com/marketplace/mergify) a shot, it works great up to now.

### Mergify Configuration

Put the `.mergify.yml` file on the repo root.

```yaml
pull_request_rules:
  - name: automatic merge for Renovate pull requests
    conditions:
      - author=renovate[bot]
      - check-success=build
    actions:
      merge:
        method: rebase
```

- `check-success=build`: `build` is the GitHub action's job name, not workflow name.
- `method: rebase`: see https://docs.mergify.com/actions/merge/.

Read more on [Mergify Docs](https://docs.mergify.com/).
