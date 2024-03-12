---
title: 使用 Docker Run 命令進行開發
linkTitle: Docker Run
description: 使用 Docker run 命令進行主題開發和站點構建。
date: 2024-03-06T23:44:53+08:00
nav_weight: 1
nav_icon:
  vendor: simple
  name: docker
categories:
  - 文檔
tags:
  - 開發
  - Docker Run
---

你首先需要為你的主題和站點選擇適當的[鏡像標籤]({{< relref "docs/tags" >}})，本文以 `hugomods/hugo:exts` 為例。

## 更改當前工作目錄

將當前工作目錄更改為項目根目錄。

{{< page-resource-content "codes/cd" >}}

{{% bs/alert warning %}}
後續步驟均於你的項目根目錄下執行。
{{% /bs/alert %}}

## 安裝依賴（可選）

{{% bs/alert info %}}
若你的站點和主題並不需要安裝依賴，則跳過。
{{% /bs/alert %}}

你或許需要在啟動 Hugo 服務器前安裝依賴，比如通過 NPM 安裝依賴。

{{< page-resource-content "codes/npm" >}}

1. `-v ${PWD}:/src` 將當前目錄掛載到容器的[默認工作目錄]({{< relref "docs/introduction#默認工作目錄" >}})（`/src`）。
2. `$HOME/hugo_cache:/tmp/hugo_cache` 將 `$HOME/hugo_cache` 掛載到默認的 `cacheDir`（`/tmp/hugo_cache`）以提高構建性能。
1. `npm i` 是 `npm install` 的快捷方式，其替換了容器的[默認命令]({{< relref "docs/introduction#默認命令" >}})（`hugo version`）。

## 啟動 Hugo 服務器

{{< page-resource-content "codes/hugo-server" >}}

{{% bs/alert danger %}}
請注意 `--bind 0.0.0.0` 是必須的，否則 Hugo 服務器可能無法接收任何來自宿主機的請求。
{{% /bs/alert %}}

1. `-p port:port` 將容器端口映射到宿主機端口。

使用 `1313` 以外的端口，如 `8080`：

{{< page-resource-content "codes/hugo-server-other-port" >}}
