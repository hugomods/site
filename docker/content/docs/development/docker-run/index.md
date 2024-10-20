---
title: Developing With Docker Run
linkTitle: Docker Run
description: Developing themes and building sites with Docker run.
date: 2024-03-06T23:44:53+08:00
nav_weight: 2
nav_icon:
  vendor: simple
  name: docker
categories:
  - Docs
tags:
  - Development
  - Docker Run
---

Firstly, you'll need to choose the proper [image tag]({{< relref "docs/tags" >}}) for your themes and sites, in this section, we take `hugomods/hugo:exts-non-root` as the example.

## Change Current Working Directory

Change current working directory to your project root.

{{< page-resource-content "codes/cd" >}}

{{% bs/alert danger %}}
The rest of steps are performed under your project root.
{{% /bs/alert %}}

## Launch Interactive Shell

With the interactive shell, you're able to:

1. Install dependencies via NPM/Yarn.
1. Create content.
1. Update and tidy Hugo modules.

{{< page-resource-content "codes/shell" >}}

1. `-v ${PWD}:/src` mounts current working directory on the [default working directory]({{< relref "docs/introduction#default-working-directory" >}})(`/src`) inside the Docker container.
1. `$HOME/hugo_cache:/tmp/hugo_cache` mounts `$HOME/hugo_cache` on the default `cacheDir` (`/tmp/hugo_cache`) to improve build performance.

## Start Hugo Server

> [!WARNING]
> You might need to create the `${HOME}/hugo_cache` folder first via `mkdir ${HOME}/hugo_cache` when running on *nix OS.
>
> Otherwise permission issues may arise.

{{< page-resource-content "codes/hugo-server" >}}

{{% bs/alert danger %}}
~~Please note that `--bind 0.0.0.0` is required when using `hugo server`, otherwise Hugo server may not receive any incoming requests from host.~~

Since `0.136.2`, both of `server` and `hugo server` bind `0.0.0.0` by default.
{{% /bs/alert %}}

{{% bs/alert info %}}
Since `0.128.0`, `server` is available as an alias of `hugo server`, which will bind `0.0.0.0` by default.
{{% /bs/alert %}}

1. `-p port:port` mapping from host machine port to container port.

Using another port than `1313`, such as `8080`.

{{< page-resource-content "codes/hugo-server-other-port" >}}

## Stop Hugo Server

{{< page-resource-content "codes/stop-hugo-server" >}}

## Attach Hugo Server

Attach to a running Hugo server.

{{< page-resource-content "codes/attach-hugo-server" >}}
