---
title: Developing With Docker Compose
linkTitle: Docker Compose
description: Developing themes and building sites with Docker Compose.
date: 2024-03-07T12:33:11+08:00
nav_weight: 3
nav_icon:
  vendor: simple
  name: docker
categories:
  - Docs
tags:
  - Development
  - Docker Compose
---

Firstly, you'll need to choose the proper [image tag]({{< relref "docs/tags" >}}) for your themes and sites, in this section, we take `hugomods/hugo:exts-non-root` as the example.

## Create Docker Compose File

And then create `docker-compose.yml` on your project root.

{{< page-resource-content "codes/docker-compose" >}}

{{% bs/alert danger %}}
~~Please note that `--bind 0.0.0.0` is required when using `hugo server`, otherwise Hugo server may not receive any incoming requests from host.~~

Since `0.136.2`, both of `server` and `hugo server` bind `0.0.0.0` by default.
{{% /bs/alert %}}

{{% bs/alert info %}}
Since `0.128.0`, `server` is available as an alias of `hugo server`, which will bind `0.0.0.0` by default.
{{% /bs/alert %}}

1. `-v ./:/src` mounts current working directory on the [default working directory]({{< relref "docs/introduction#default-working-directory" >}})(`/src`) inside the Docker container.
1. `-v ~/hugo_cache:/tmp/hugo_cache` mounts `$HOME/hugo_cache` on the default `cacheDir` (`/tmp/hugo_cache`) to improve build performance.

## Install Dependencies (Optional)

{{% bs/alert info %}}
Skip this step if your site/theme doesn’t require it.
{{% /bs/alert %}}

You may want to install the dependencies before running Hugo server, such as install dependencies via npm.

{{< page-resource-content "codes/npm" >}}

1. `npm i` replaces the default command of `server` service, which is the shorthand of `npm install`.

## Start Hugo Server

{{< page-resource-content "codes/hugo-server" >}}

## Launch Interactive Shell

{{< page-resource-content "codes/shell" >}}
