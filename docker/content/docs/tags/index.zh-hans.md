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

- _Extended_ 表示 Hugo 的扩展版本。
- 以 **reg** 开头的镜像标签表示常规版（标准版）Hugo。
- 以 **exts** 结尾的镜像标签不仅包含了以下列出的工具，还包含了 **Embedded Dart Sass**、**PostCSS CLI**、**Autoprefixer**、**PurgeCSS** 和 **RTLCSS**。
- 镜像标签包含 `node-lts` 则表示 LTS（长期支持）版本的 Node.js.

{{% bs/alert warning %}}
请注意 **PostCSS CLI**、**Autoprefixer**、**PurgeCSS** 和 **RTLCSS** 是全局安装的。
{{% /bs/alert %}}

{{% bs/alert info %}}
自 `0.126.3` 版本后，**AsciiDoc** 和 **Pandoc** 已包含在 `exts` 中。
{{% /bs/alert %}}

## 应该使用哪个镜像标签？

Hugo Docker 镜像标签选择顺序如下：

1. 需要 Dart Sass，则选择 [exts](#exts) 标签。
1. 需要 Hugo Pipes 编译（转换）Sass/SCSS，则选择带有 **Extended**（不带 **reg** 前缀）的标签。
1. 需要 Hugo 模块，则选择带有 **Go** 的标签。
1. 需要 NPM 安装依赖，则选择带有 **NPM** 的标签。
1. 需要 Hugo 的 `--enableGitInfo` 标志，则选择带有 **Git** 的标签。

{{% bs/alert info %}}
若你不确定上述说明为何意，你可以使用 [exts](#exts) 标签，其满足绝大部分主题的要求，或者向主题作者请求帮助。
{{% /bs/alert %}}

## 镜像标签

{{% docker-image-tags %}}
