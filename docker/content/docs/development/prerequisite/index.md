---
title: "Prerequisite"
description: "Requirements about developing Hugo sites and themes."
date: 2024-06-03T13:19:22+08:00
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: list-check
series:
  - Docs
---

## Docker

Please refer to [Install Docker Engine](https://docs.docker.com/engine/install/).

## Hugo Site

You need to set up a Hugo site for development. If you don't have one yet, you should create a new Hugo site first.

### Create Hugo Site From Scratch

{{< page-resource-content "data/create-site" >}}

> [!NOTE]
> The `${PWD}` represents the current working directory.

### Launch Up Hugo Server

Once site was prepared, you can either using [Docker Run]({{< relref "docs/development/docker-run" >}}) or [Docker Compose]({{< relref "docs/development/docker-compose" >}}) to launch up Hugo server.
