---
title: "环境变量"
linkTitle: "环境变量"
description: 用于读取环境变量的短代码
nav_weight: 1000
nav_icon:
  vendor: bs
  name: terminal
  color: ''
featured: false
pinned: false
date: 2023-09-08T17:47:03+08:00
draft: false
series:
  - 文档
categories:
  - 短代码
tags:
  - Env
  - Environment Variables
  - 环境变量
authors:
  - HugoMods
images:
---

## 使用场景

该简码主要用于从环境变量中读取某些信息。试想一下，你有一个公共网站资源库，里面有您的个人联系电子邮件地址，当别人分叉并部署一个新网站时，忘记更改电子邮件地址，这无疑会给您带来不必要的联系和麻烦。

{{% bs/alert %}}
当使用 GitHub Actions 进行部署时，你需要将信息存放于 GitHub secrets，并将其传递给环境变量。
{{% /bs/alert %}}

## 语法

```markdown
{{</* env */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

{{< page-resource-content "data/examples" >}}
