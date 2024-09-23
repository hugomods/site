---
title: "Contribute"
description: "We're glad to see developers who want to contribute to this project, in this section, you'll learn how to build and test images on local environment, and then commit changes to our repository."
date: 2024-06-03T12:19:01+08:00
draft: false
params:
  nav_icon:
    vendor: bs
    name: code
series:
  - Docs
tags:
  - Docker
  - Git
---

We assume that you already have basic skills about Git and Docker.

## Fork Repository

Firstly, you should fork the [repository](https://github.com/hugomods/docker), and then clone it to local. Assume that the `https://github.com/username/hugo-docker` is the fork repository.

{{< page-resource-content "data/fork" >}}

## Change Directory

And then change the current working directory to `docker/hugo`, the rest of steps are performed under this directory.

{{< page-resource-content "data/cd" >}}

## Clone Hugo Repository

We need to clone [Hugo](https://github.com/gohugoio/hugo) into `docker/hugo/src` to build it from source.

{{< page-resource-content "data/clone-hugo" >}}

{{% bs/alert "warning" %}}
Please replace the `<version>` with particular version, such as `v0.126.1`.
{{% /bs/alert %}}

## Build Images

Modify files and save changes, and then build a local image, takes `exts` as an example.

{{< page-resource-content "data/build" >}}

## Test Images

You should test the image locally to ensure it works properly.

{{< page-resource-content "data/test" >}}

## Writing Tests

We strongly recommend writing tests on our [build](https://github.com/hugomods/docker/blob/main/.github/workflows/build.yml) workflow if possible, so that we can make sure everything is fine before pushing it to registry.

If you're unfamiliar to this, skip this step for now, we will handle it on your PR.

## Commit Changes

Once tests passed, you can commit the changes and push to remote.

{{< page-resource-content "data/commit" >}}

{{% bs/alert "warning" %}}
`[build]` is required to trigger the build workflow.
{{% /bs/alert %}}

## Create Pull Request

To create a pull request, you can simply navigate to your fork repository, then GitHub web UI will pop up a button to create pull request.
We will review and merge it after the tests are passed.
