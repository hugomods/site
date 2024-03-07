---
date: 2024-03-05T22:32:43+08:00
title: 自定义图标供应商
description: 内置的图标供应商或许无法满足你的需求，别担心，你完全可以创建属于你自己的图标供应商。
nav_weight: 6
nav_icon:
  vendor: bs
  name: plus-circle
  className: text-success
categories:
  - 文档
tags:
  - 供应商
---

## 原理

图标以 `/assets/icons/{vendor}/{name}` 形式保存，其中 `{vendor}`、`{name}` 分别表示供应商名称和图标名称。

## 站点范围的 SVG 图标

添加和使用自定义图标的最简单方法是将图标保存到相应的文件夹中。让我们以 `/asset/icons/custom/example.svg` 为例，供应商名称为 `custom`，图标名称为 `example`，然后你可以通过模板和快捷代码使用它。

## 共享的 SVG 图标

若打算于多个站点复用这些图标，你则需要创建一个模块。

### 创建并克隆仓库

首先创建一个仓库，并克隆到本地，以 `github.com/user/hugo-icons` 为例。

{{< bs/alert danger >}}
请勿忘记修改仓库地址和模块路径。
{{< /bs/alert >}}

```sh
git clone https://github.com/user/hugo-icons
cd hugo-icons
```

### 初始化模块

模块路径通常为不带协议的仓库地址。

```sh
hugo mod init github.com/user/hugo-icons
```

### 添加图标

然后使用适当的供应商名称将图标保存到 `/assets/icons`。

### 提交更改并推送到远程

```sh
git add -A
git commit -m 'add icons'
git push origin main
```

### 将新图标供应商导入到站点

现在你应该可以将自定义的图标供应商导入到站点。
