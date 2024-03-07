---
title: 使用 Docker Run 命令进行开发
linkTitle: Docker Run
description: 使用 Docker run 命令进行主题开发和站点构建。
date: 2024-03-06T23:44:53+08:00
nav_weight: 1
nav_icon:
  vendor: simple
  name: docker
categories:
  - 文档
tags:
  - 开发
  - Docker Run
---

你首先需要为你的主题和站点选择适当的[镜像标签]({{< relref "docs/tags" >}})，本文以 `hugomods/hugo:exts` 为例。

## 更改当前工作目录

将当前工作目录更改为项目根目录。

{{< page-resource-content "codes/cd" >}}

{{% bs/alert warning %}}
后续步骤均于你的项目根目录下执行。
{{% /bs/alert %}}

## 安装依赖（可选）

{{% bs/alert info %}}
若你的站点和主题并不需要安装依赖，则跳过。
{{% /bs/alert %}}

你或许需要在启动 Hugo 服务器前安装依赖，比如通过 NPM 安装依赖。

{{< page-resource-content "codes/npm" >}}

1. `-v ${PWD}:/src` 将当前目录挂载到容器的[默认工作目录]({{< relref "docs/introduction#默认工作目录" >}})（`/src`）。
1. `npm i` 是 `npm install` 的快捷方式，其替换了容器的[默认命令]({{< relref "docs/introduction#默认命令" >}})（`hugo version`）。

## 启动 Hugo 服务器

{{< page-resource-content "codes/hugo-server" >}}

{{% bs/alert danger %}}
请注意 `--bind 0.0.0.0` 是必须的，否则 Hugo 服务器可能无法接收任何来自宿主机的请求。
{{% /bs/alert %}}

1. `-p port:port` 将容器端口映射到宿主机端口。

使用 `1313` 以外的端口，如 `8080`：

{{< page-resource-content "codes/hugo-server-other-port" >}}
