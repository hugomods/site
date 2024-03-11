---
title: "環境變量"
linkTitle: "環境變量"
description: 用於讀取環境變量的短代碼
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
  - 文檔
categories:
  - 短代碼
tags:
  - Env
  - Environment Variables
  - 環境變量
authors:
  - HugoMods
images:
---

## 使用場景

該簡碼主要用於從環境變量中讀取某些信息。試想一下，你有一個公共網站資源庫，裡面有您的個人聯繫電子郵件地址，當別人分叉並部署一個新網站時，忘記更改電子郵件地址，這無疑會給您帶來不必要的聯繫和麻煩。

{{% bs/alert %}}
當使用 GitHub Actions 進行部署時，你需要將信息存放於 GitHub secrets，並將其傳遞給環境變量。
{{% /bs/alert %}}

## 語法

```markdown
{{</* env */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

{{< page-resource-content "data/examples" >}}
