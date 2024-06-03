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

Firstly, you'll need to choose the proper [image tag]({{< relref "docs/tags" >}}) for your themes and sites, in this section, we take `hugomods/hugo:exts` as the example.

## Change Current Working Directory

Change current working directory to your project root.

{{< page-resource-content "codes/cd" >}}

{{% bs/alert warning %}}
The rest of steps are performed under your project root.
{{% /bs/alert %}}

## Install Dependencies (Optional)

{{% bs/alert info %}}
Skip this step if your site/theme doesn’t require it.
{{% /bs/alert %}}

You may want to install the dependencies before running Hugo server, such as install dependencies via npm.

{{< page-resource-content "codes/npm" >}}

1. `-v ${PWD}:/src` mounts current working directory on the [default working directory]({{< relref "docs/introduction#default-working-directory" >}})(`/src`) inside the Docker container.
1. `$HOME/hugo_cache:/tmp/hugo_cache` mounts `$HOME/hugo_cache` on the default `cacheDir` (`/tmp/hugo_cache`) to improve build performance.
1. `npm i` replaces the [default command]({{< relref "docs/introduction#default-command" >}})(`hugo version`), which is the shorthand of `npm install`.

## Start Hugo Server

{{< page-resource-content "codes/hugo-server" >}}

{{% bs/alert danger %}}
Please note that `--bind 0.0.0.0` is required, otherwise Hugo server may not recieve any incoming requests from host.
{{% /bs/alert %}}

1. `-p port:port` mapping from host machine port to container port.

Using another port than `1313`, such as `8080`.

{{< page-resource-content "codes/hugo-server-other-port" >}}
