---
title: "貢獻"
description: "我們很高興看到有開發者願意為這個項目做出貢獻，在本節中，您將學習如何在本地環境中構建和測試映像，然後將更改提交到我們的倉庫中。"
date: 2024-06-03T12:19:01+08:00
draft: false
params:
  nav_icon:
    vendor: bs
    name: code
series:
  - 文檔
tags:
  - Docker
  - Git
---

我們假定你已經具備了 Git 和 Docker 的基本技能。

## 克隆倉庫

你首先需要 fork [倉庫](https://github.com/hugomods/docker)，然後將其克隆到本地。假定分叉倉庫為  `https://github.com/username/hugo-docker`。

{{< page-resource-content "data/fork" >}}

## 更換工作目錄

然後更換工作目錄為 `docker/hugo`，其餘步驟均於該目錄下進行。

{{< page-resource-content "data/cd" >}}

## 克隆 Hugo 倉庫

為了從源代碼構建 Hugo，我們需要將[其](https://github.com/gohugoio/hugo)克隆到 `docker/hugo/src`。

{{< page-resource-content "data/clone-hugo" >}}

{{% bs/alert "warning" %}}
請將 `<version>` 替換為特定的版本，比如 `v0.126.1`。
{{% /bs/alert %}}

## 構建鏡像

修改文件並保存改動，然後構建一個本地鏡像，以 `exts` 為例。

{{< page-resource-content "data/build" >}}

## 測試鏡像

你需要於本地測試鏡像以確保其正常工作。

{{< page-resource-content "data/test" >}}

## 編寫測試

我們強烈建議儘可能於[構建工作流程](https://github.com/hugomods/docker/blob/main/.github/workflows/build.yml)中編寫測試，以確保推送到鏡像倉庫前萬無一失。

## 提交修改

當測試通過，則可以提交修改並推送到遠程倉庫了。

{{< page-resource-content "data/commit" >}}

{{% bs/alert "warning" %}}
`[build]` 是必須的，其用於觸發構建流程。
{{% /bs/alert %}}

## 創建拉取請求

要創建一個拉取請求，只需導航到分叉倉庫，然後 GitHub 網頁 UI 將彈出一個按鈕來創建拉取請求。我們將於測試通過後，對其審查和合並。
