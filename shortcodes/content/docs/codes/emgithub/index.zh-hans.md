---
title: "EmGitHub"
linkTitle: "EmGitHub"
description: 用于将 GitHub 源文件嵌入 Markdown 内容的短代码。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: github
featured: false
pinned: false
date: 2023-09-08T12:49:11+08:00
draft: false
series:
  - 文档
categories:
  - 短代码
tags:
  - GitHub
  - EmGitHub
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{</* emgithub */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 调整样式

如果它嵌入到目标网页时看起来很奇怪，你需要调整样式。详情请参阅 [get started](https://github.com/yusanshi/emgithub#get-started/) 一节。

## 站点参数

你还可以调整默认的参数。

{{< page-resource-content "data/config" >}}

## 示例

### Markdown 示例

{{< page-resource-content "data/example-markdown" >}}

### 原始代码示例

{{< page-resource-content "data/example-raw-code" >}}
