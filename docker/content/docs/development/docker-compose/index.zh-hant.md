---
title: 使用 Docker Compose 進行開發
linkTitle: Docker Compose
description: 使用 Docker Compose 進行主題開發和站點構建。
date: 2024-03-07T12:33:11+08:00
nav_weight: 3
nav_icon:
  vendor: simple
  name: docker
categories:
  - 文檔
tags:
  - 開發
  - Docker Compose
---

你首先需要為你的主題和站點選擇適當的[鏡像標籤]({{< relref "docs/tags" >}})，本文以 `hugomods/hugo:exts-non-root` 為例。

## 創建 Docker Compose 文件

接著於項目根目錄下創建 `docker-compose.yml`。

{{< page-resource-content "codes/docker-compose" >}}

{{% bs/alert danger %}}
~~請注意當使用 `hugo server` 時  `--bind 0.0.0.0` 是必須的，否則 Hugo 服務器可能無法接收任何來自宿主機的請求。~~

自 `0.136.2` 起，`server` 和 `hugo server` 均默認綁定 `0.0.0.0`。
{{% /bs/alert %}}

{{% bs/alert info %}}
自 `0.128.0`，`server` 可作為 `hugo server` 的別名使用，其默認綁定 `0.0.0.0`。
{{% /bs/alert %}}

1. `-v ./:/src` 將當前目錄掛載到容器的[默認工作目錄]({{< relref "docs/introduction#默認工作目錄" >}})（`/src`）。
2. `-v ~/hugo_cache:/tmp/hugo_cache` 將 `$HOME/hugo_cache` 掛載到默認的 `cacheDir`（`/tmp/hugo_cache`）以提高構建性能。

## 安裝依賴（可選）

{{% bs/alert info %}}
若你的站點和主題並不需要安裝依賴，則跳過。
{{% /bs/alert %}}

你或許需要在啟動 Hugo 服務器前安裝依賴，比如通過 NPM 安裝依賴。

{{< page-resource-content "codes/npm" >}}

1. `npm i` 是 `npm install` 的快捷方式，其替換了 `server` 服務的默認命令。

## 啟動 Hugo 服務器

{{< page-resource-content "codes/hugo-server" >}}

## 啟動交互式 Shell

{{< page-resource-content "codes/shell" >}}
