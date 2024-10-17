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

- __Extended__ 表示 Hugo 的**擴展版本**。
- 以 **std** 開頭的鏡像標籤表示**標準版** Hugo。
- 以 **exts** 結尾的鏡像標籤不僅包含了以下列出的工具，還包含了 **Embedded Dart Sass**、**PostCSS CLI**、**Autoprefixer**、**PurgeCSS** 和 **RTLCSS**。
- 鏡像標籤包含 `node-lts` 則表示 **LTS**（長期支持）版本的 Node.js。
- 鏡像標籤包含 `non-root` 則表示默認用戶為非根用戶 [`hugo`]({{< relref "/docs/introduction#hugo-用戶" >}})。

{{% bs/alert warning %}}
請注意 **PostCSS CLI**、**Autoprefixer**、**PurgeCSS** 和 **RTLCSS** 是全局安裝的。
{{% /bs/alert %}}

{{% bs/alert primary %}}
自 `0.127.0` 版本後，`reg*` 標籤被替換為 `std*`，但無須擔心，為了向後兼容，我們仍會持續更新 `reg*`。
{{% /bs/alert %}}

{{% bs/alert info %}}
自 `0.126.3` 版本後，**AsciiDoc** 和 **Pandoc** 已包含在 `exts` 中。
{{% /bs/alert %}}

## 應該使用哪個鏡像標籤？

Hugo Docker 鏡像標籤選擇順序如下：

1. 需要 **Dart Sass**，則選擇帶有 **Dart Sass** 標籤。
1. 需要 **LibSass** 或圖片處理時用到 **WebP** 格式，則選擇帶有 **Extended**（不帶 **std** 前綴）的標籤。
1. 需要 Hugo 模塊，則選擇帶有 **Go** 的標籤。
1. 需要 NPM/Yarn 安裝依賴，則選擇帶有 **Node.js** 的標籤。
1. 需要 Hugo 的 `--enableGitInfo` 標誌，則選擇帶有 **Git** 的標籤。

{{% bs/alert info %}}
若你不確定上述說明為何意，你可以使用 [exts](#exts) 標籤，其滿足絕大部分主題的要求，或者向主題作者請求幫助。
{{% /bs/alert %}}

## 鏡像標籤

> [!TIP]
> 你可以通過功能特性來[篩選鏡像]({{< relref "/choose" >}})。

{{% docker-image-tags %}}
