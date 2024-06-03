---
title: 使用 Docker Compose 进行开发
linkTitle: Docker Compose
description: 使用 Docker Compose 进行主题开发和站点构建。
date: 2024-03-07T12:33:11+08:00
nav_weight: 3
nav_icon:
  vendor: simple
  name: docker
categories:
  - 文档
tags:
  - 开发
  - Docker Compose
---

你首先需要为你的主题和站点选择适当的[镜像标签]({{< relref "docs/tags" >}})，本文以 `hugomods/hugo:exts` 为例。

## 创建 Docker Compose 文件

接着于项目根目录下创建 `docker-compose.yml`。

{{< page-resource-content "codes/docker-compose" >}}

{{% bs/alert danger %}}
请注意 `--bind 0.0.0.0` 是必须的，否则 Hugo 服务器可能无法接收任何来自宿主机的请求。
{{% /bs/alert %}}

1. `-v ${PWD}:/src` 将当前目录挂载到容器的[默认工作目录]({{< relref "docs/introduction#默认工作目录" >}})（`/src`）。
2. `$HOME/hugo_cache:/tmp/hugo_cache` 将 `$HOME/hugo_cache` 挂载到默认的 `cacheDir`（`/tmp/hugo_cache`）以提高构建性能。

## 安装依赖（可选）

{{% bs/alert info %}}
若你的站点和主题并不需要安装依赖，则跳过。
{{% /bs/alert %}}

你或许需要在启动 Hugo 服务器前安装依赖，比如通过 NPM 安装依赖。

{{< page-resource-content "codes/npm" >}}

1. `npm i` 是 `npm install` 的快捷方式，其替换了 `server` 服务的默认命令。

## 启动 Hugo 服务器

{{< page-resource-content "codes/hugo-server" >}}
