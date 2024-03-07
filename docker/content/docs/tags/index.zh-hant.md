---
title: 鏡像標籤
linkTitle: 鏡像標籤
description: Hugo Docker 鏡像標籤（變體）。
date: 2024-03-06T22:31:21+08:00
nav_weight: 2
nav_icon:
  vendor: bs
  name: tags
  className: text-success
categories:
  - 文檔
tags:
  - Docker
  - Hugo
  - 鏡像
  - 標籤
---

## 說明

- _Extended_ 表示 Hugo 的擴展版本。
- 以 **reg** 開頭的鏡像標籤表示常規版（標準版）Hugo。
- 以 **exts** 結尾的鏡像標籤不僅包含了以下列出的工具，還包含了 **Embedded Dart Sass**、**PostCSS CLI**、**Autoprefixer**、**PurgeCSS** 和 **RTLCSS**。
- 鏡像標籤包含 `node-lts` 則表示 LTS（長期支持）版本的 Node.js.

{{% bs/alert warning %}}
請注意 **PostCSS CLI**、**Autoprefixer**、**PurgeCSS** 和 **RTLCSS** 是全局安裝的。
{{% /bs/alert %}}

## 應該使用哪個鏡像標籤？

Hugo Docker 鏡像標籤選擇順序如下：

1. 需要 Dart Sass，則選擇 [exts](#exts) 標籤。
1. 需要 Hugo Pipes 編譯（轉換）Sass/SCSS，則選擇帶有 **Extended**（不帶 **reg** 前綴）的標籤。
1. 需要 Hugo 模塊，則選擇帶有 **Go** 的標籤。
1. 需要 NPM 安裝依賴，則選擇帶有 **NPM** 的標籤。
1. 需要 Hugo 的 `--enableGitInfo` 標誌，則選擇帶有 **Git** 的標籤。

{{% bs/alert info %}}
若你不確定上述說明為何意，你可以使用 [exts](#exts) 標籤，其滿足絕大部分主題的要求，或者向主題作者請求幫助。
{{% /bs/alert %}}

## 鏡像標籤

{{% docker-image-tags %}}
