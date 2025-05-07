---
title: 镜像标签
linkTitle: 镜像标签
description: Hugo Docker 镜像标签（变体）。
date: 2024-03-06T22:31:21+08:00
nav_weight: 2
nav_icon:
  vendor: bs
  name: tags
  className: text-success
categories:
  - 文档
tags:
  - Docker
  - Hugo
  - 镜像
  - 标签
---

## 说明

- __Extended__ 表示 Hugo 的**扩展版本**。
- 以 **std** 开头的镜像标签表示**标准版** Hugo。
- 以 **exts** 结尾的镜像标签不仅包含了以下列出的工具，还包含了 **Embedded Dart Sass**、**PostCSS CLI**、**Autoprefixer**、**PurgeCSS** 和 **RTLCSS**。
- 镜像标签包含 `node-lts` 则表示 **LTS**（长期支持）版本的 Node.js。
- 镜像标签包含 `non-root` 则表示默认用户为非根用户 [`hugo`]({{< relref "/docs/introduction#hugo-用户" >}})。

{{% bs/alert warning %}}
请注意 **PostCSS CLI**、**Autoprefixer**、**PurgeCSS** 和 **RTLCSS** 是全局安装的。
{{% /bs/alert %}}

## 应该使用哪个镜像标签？

Hugo Docker 镜像标签选择顺序如下：

1. 需要基于 Debian 的镜像，则选择带有 `debian` 前缀的标签，比如说 Playwright 并不原生支持 Alpine。
1. 需要每日构建版本，则选择 `nightly*` 标签。
1. 需要 **Dart Sass**，则选择带有 **Dart Sass** 标签。
1. 需要 **LibSass** 或图片处理时用到 **WebP** 格式，则选择带有 **Extended**（不带 **std** 前缀）的标签。
1. 需要 Hugo 模块，则选择带有 **Go** 的标签。
1. 需要 NPM/Yarn 安装依赖，则选择带有 **Node.js** 的标签。
1. 需要 Hugo 的 `--enableGitInfo` 标志，则选择带有 **Git** 的标签。
1. 需要最小的镜像，则选择以 `base` 或 `std-base` 开头的标签。

{{% bs/alert info %}}
若你不确定上述说明为何意，你可以使用 [exts](#exts) 标签，其满足绝大部分主题的要求，或者向主题作者请求帮助。
{{% /bs/alert %}}

## 镜像标签

> [!TIP]
> 你可以通过功能特性来[筛选镜像]({{< relref "/choose" >}})。

{{% docker-image-tags %}}
