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

## 如何安装 Docker？

这超出了本文档的范围，请参阅 [Install Docker Engine](https://docs.docker.com/engine/install/)。

## 基础镜像

所有镜像都是基于 [Alpine](https://hub.docker.com/_/alpine) 的。

## 默认工作目录

默认工作目录为 `/src`。

## 默认命令

默认命令为 `hugo env`，其打印 Hugo 版本并退出。
