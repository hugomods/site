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

### 更改所有权

{{% bs/alert %}}
若使用 Windows 系统则跳过该步骤。
{{% /bs/alert %}}

当站点创建完毕，可能会出现权限问题，我们可以通过将站点所有权分配给当前用户来解决这个问题。

{{< page-resource-content "data/chown" >}}

### 启动 Hugo 服务器

当站点准备好后，你可以通过 [Docker Run]({{< relref "docs/development/docker-run" >}}) 或 [Docker Compose]({{< relref "docs/development/docker-compose" >}}) 来启动 Hugo 服务器。
