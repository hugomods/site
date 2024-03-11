---
title: "EmGitHub"
linkTitle: "EmGitHub"
description: 用於將 GitHub 源文件嵌入 Markdown 內容的短代碼。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: github
featured: false
pinned: false
date: 2023-09-08T12:49:11+08:00
draft: false
series:
  - 文檔
categories:
  - 短代碼
tags:
  - GitHub
  - EmGitHub
authors:
  - HugoMods
images:
---

## 語法

```markdown
{{</* emgithub */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 調整樣式

如果它嵌入到目標網頁時看起來很奇怪，你需要調整樣式。詳情請參閱 [get started](https://github.com/yusanshi/emgithub#get-started/) 一節。

## 站點參數

你還可以調整默認的參數。

{{< page-resource-content "data/config" >}}

## 示例

### Markdown 示例

{{< page-resource-content "data/example-markdown" >}}

### 原始代碼示例

{{< page-resource-content "data/example-raw-code" >}}
