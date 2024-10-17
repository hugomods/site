---
title: "前置条件"
description: "开发 Hugo 站点和主题的要求。"
date: 2024-06-03T13:19:22+08:00
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: list-check
series:
  - 文档
---

## Docker

请参阅 [Install Docker Engine](https://docs.docker.com/engine/install/)。

## Hugo 站点

您需要准备一个用于开发的 Hugo 站点。如果还没有，则首先需要创建一个新的 Hugo 站点。

### 从头开始创建 Hugo 站点

{{< page-resource-content "data/create-site" >}}

> [!NOTE]
> `${PWD}` 表示当前工作目录。

### 启动 Hugo 服务器

当站点准备好后，你可以通过 [Docker Run]({{< relref "docs/development/docker-run" >}}) 或 [Docker Compose]({{< relref "docs/development/docker-compose" >}}) 来启动 Hugo 服务器。
