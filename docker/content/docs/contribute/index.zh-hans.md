---
title: "贡献"
description: "我们很高兴看到有开发者愿意为这个项目做出贡献，在本节中，您将学习如何在本地环境中构建和测试映像，然后将更改提交到我们的仓库中。"
date: 2024-06-03T12:19:01+08:00
draft: false
params:
  nav_icon:
    vendor: bs
    name: code
series:
  - 文档
tags:
  - Docker
  - Git
---

我们假定你已经具备了 Git 和 Docker 的基本技能。

## 克隆仓库

你首先需要 fork [仓库](https://github.com/hugomods/docker)，然后将其克隆到本地。假定分叉仓库为  `https://github.com/username/hugo-docker`。

{{< page-resource-content "data/fork" >}}

## 更换工作目录

> 以构建基于 Alpine 的镜像为例。

然后更换工作目录为 `docker/hugo/alpine`，其余步骤均于该目录下进行。

{{< page-resource-content "data/cd" >}}

## 克隆 Hugo 仓库

为了从源代码构建 Hugo，我们需要将[其](https://github.com/gohugoio/hugo)克隆到 `docker/hugo/src`。

{{< page-resource-content "data/clone-hugo" >}}

{{% bs/alert "warning" %}}
请将 `<version>` 替换为特定的版本，比如 `v0.126.1`。
{{% /bs/alert %}}

## 构建镜像

修改文件并保存改动，然后构建一个本地镜像，以 `exts` 为例。

{{< page-resource-content "data/build" >}}

## 测试镜像

你需要于本地测试镜像以确保其正常工作。

{{< page-resource-content "data/test" >}}

## 编写测试

我们强烈建议尽可能于[构建工作流程](https://github.com/hugomods/docker/blob/main/.github/workflows/build.yml)中编写测试，以确保推送到镜像仓库前万无一失。

## 提交修改

当测试通过，则可以提交修改并推送到远程仓库了。

{{< page-resource-content "data/commit" >}}

{{% bs/alert "warning" %}}
`[build]` 是必须的，其用于触发构建流程。
{{% /bs/alert %}}

## 创建拉取请求

要创建一个拉取请求，只需导航到分叉仓库，然后 GitHub 网页 UI 将弹出一个按钮来创建拉取请求。我们将于测试通过后，对其审查和合并。
