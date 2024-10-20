---
title: 使用 Docker Run 命令进行开发
linkTitle: Docker Run
description: 使用 Docker run 命令进行主题开发和站点构建。
date: 2024-03-06T23:44:53+08:00
nav_weight: 2
nav_icon:
  vendor: simple
  name: docker
categories:
  - 文档
tags:
  - 开发
  - Docker Run
---

你首先需要为你的主题和站点选择适当的[镜像标签]({{< relref "docs/tags" >}})，本文以 `hugomods/hugo:exts-non-root` 为例。

## 更改当前工作目录

将当前工作目录更改为项目根目录。

{{< page-resource-content "codes/cd" >}}

{{% bs/alert danger %}}
后续步骤均于你的项目根目录下执行。
{{% /bs/alert %}}

## 启动交互式 Shell（可选）

通过交互式 Shell，你可以：

1. 通过 NPM/Yarn 安装依赖。
1. 创建内容。
1. 更新和整理 Hugo 模块。

{{< page-resource-content "codes/shell" >}}

1. `-v ${PWD}:/src` 将当前目录挂载到容器的[默认工作目录]({{< relref "docs/introduction#默认工作目录" >}})（`/src`）。
2. `$HOME/hugo_cache:/tmp/hugo_cache` 將 `$HOME/hugo_cache` 掛載到默認的 `cacheDir`（`/tmp/hugo_cache`）以提高構建性能。

## 启动 Hugo 服务器

> [!WARNING]
> 当于 *nix 系统运行时，你或许需要先创建 `${HOME}/hugo_cache` 目录，否则可能遇到权限问题。

{{< page-resource-content "codes/hugo-server" >}}

{{% bs/alert danger %}}
~~请注意当使用 `hugo server` 时 `--bind 0.0.0.0` 是必须的，否则 Hugo 服务器可能无法接收任何来自宿主机的请求。~~

自 `0.136.2` 起，`server` 和 `hugo server` 均默认绑定 `0.0.0.0`。
{{% /bs/alert %}}

{{% bs/alert info %}}
自 `0.128.0`，`server` 可作为 `hugo server` 的别名使用，其默认绑定 `0.0.0.0`。
{{% /bs/alert %}}

1. `-p port:port` 将容器端口映射到宿主机端口。

使用 `1313` 以外的端口，如 `8080`：

{{< page-resource-content "codes/hugo-server-other-port" >}}

## 停止 Hugo 服务器

{{< page-resource-content "codes/stop-hugo-server" >}}

## 连接 Hugo 服务器

连接到一个运行中的 Hugo 服务器。

{{< page-resource-content "codes/attach-hugo-server" >}}
