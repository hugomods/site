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

## 默认命令

默认命令为 `hugo env`，其打印 Hugo 版本并退出。

## 默认 Shell

因为镜像是基于 Alpine 的，其默认 Shell 为 `ash`（`/bin/sh`）。
