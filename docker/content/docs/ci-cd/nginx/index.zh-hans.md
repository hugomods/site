---
title: 使用 Nginx 镜像部署
linkTitle: Nginx
description: 本节将介绍如何构建站点镜像，以使用 Nginx 作为网络服务器为 Hugo 生成的静态文件提供服务。
date: 2024-03-07T12:33:11+08:00
nav_weight: 2
nav_icon:
  vendor: simple
  name: nginx
categories:
  - 文档
tags:
  - 部署
  - Nginx
aliases:
  - /docs/deployment/nginx
---

## Nginx 镜像

![Size](https://img.shields.io/docker/image-size/hugomods/hugo/nginx?style=flat-square)

我们提供了一个内置的 [Nginx](https://github.com/hugomods/docker/blob/main/docker/nginx/Dockerfile) 镜像 - `hugomods/hugo:nginx`，其包含了一个[默认配置](https://github.com/hugomods/docker/blob/main/docker/nginx/conf.d/default.conf)。若其无法满足你的需求，你完全可以创建你自己的 Nginx 镜像，而本文将以 `hugomods/hugo:nginx` 举例。

## 创建 Dockerfile

首先于站点根目录创建 `Dockerfile` 文件。

{{< page-resource-content "codes/dockerfile" >}}

1. **build** 阶段构建站点并将生成的文件保存于发布文件夹（默认为 `/src/public`）。
1. **final** 阶段将于 **build** 阶段生成的文件复制到 Nginx 站点目录（`hugomods/hugo:nginx` 默认站点目录为 `/site`）。

## 测试构建的镜像

{{< page-resource-content "codes/test" >}}

1. `-t` 指定镜像名称和标签。
1. `--build-arg HUGO_BASEURL=http://localhost:8080` 覆盖 `baseURL`。

现在构建的站点可以于 http://localhost:8080/ 进行预览。

## 构建并推送镜像

当你对测试结果感到满意后，就可以构建生产环境的镜像，然后将其推送到容器仓库，再部署到服务器、K8s 集群等。

{{< page-resource-content "codes/build" >}}
