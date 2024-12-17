---
title: 介绍
linkTitle: 介绍
description: 介绍 Hugo Docker 镜像的细节。
date: 2024-03-06T21:51:21+08:00
nav_weight: 1
nav_icon:
  vendor: bs
  name: book
  className: text-primary
categories:
  - 文档
tags:
  - 工作目录
  - 命令
---

## 基础镜像

所有镜像都是基于 [Alpine](https://hub.docker.com/_/alpine) 的。

## 默认工作目录

默认工作目录为 `/src`。

## 用户

### 默认用户

| 镜像                 | 默认用户 |
| -------------------- | :-----: |
| **不带有** `non-root` | `root` |
| **带有** `non-root`   | `hugo` |

### `hugo` 用户

不管镜像的默认用户是否为 `root`，所有镜像都包含一个名为 `hugo` 的用户，其拥有 `/src` 的所有权。

| 名称   |  UID   |  组名  |  GID   |
| :----: | :----: | :----: | :----: |
| `hugo` | `1000` | `hugo` | `1000` |

## 命令

### 默认命令

自 `0.136.2` 后的镜像的默认命令为 `hugo help`（先前为 `hugo env`），其打印帮助信息并退出。

### 命令别名

当 `entrypoint` 命令不是一个容器内的系统命令，那么其会被用作 Hugo 的子命令。

| 例子      | 命令           |
| --------- | -------------- |
| `docker run ... server`  | `docker run ... hugo server`  |
| `docker run ... version` | `docker run ... hugo version` |

### 服务器绑定接口

默认地，`hugo server`/`server` 将绑定 `0.0.0.0`，除非指定了 `--bind` 标记。

## 默认 Shell

因为镜像是基于 Alpine 的，其默认 Shell 为 `ash`（`/bin/sh`）。
