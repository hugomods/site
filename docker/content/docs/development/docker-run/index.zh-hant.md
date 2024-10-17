---
title: 使用 Docker Run 命令進行開發
linkTitle: Docker Run
description: 使用 Docker run 命令進行主題開發和站點構建。
date: 2024-03-06T23:44:53+08:00
nav_weight: 2
nav_icon:
  vendor: simple
  name: docker
categories:
  - 文檔
tags:
  - 開發
  - Docker Run
---

你首先需要為你的主題和站點選擇適當的[鏡像標籤]({{< relref "docs/tags" >}})，本文以 `hugomods/hugo:exts-non-root` 為例。

## 更改當前工作目錄

將當前工作目錄更改為項目根目錄。

{{< page-resource-content "codes/cd" >}}

{{% bs/alert danger %}}
後續步驟均於你的項目根目錄下執行。
{{% /bs/alert %}}

## 啟動交互式 Shel（可選）

通過交互式 Shell，你可以：

1. 通過 NPM/Yarn 安裝依賴。
1. 創建內容。
1. 更新和整理 Hugo 模塊。

{{< page-resource-content "codes/shell" >}}

1. `-v ${PWD}:/src` 將當前目錄掛載到容器的[默認工作目錄]({{< relref "docs/introduction#默認工作目錄" >}})（`/src`）。
2. `$HOME/hugo_cache:/tmp/hugo_cache` 將 `$HOME/hugo_cache` 掛載到默認的 `cacheDir`（`/tmp/hugo_cache`）以提高構建性能。

## 啟動 Hugo 服務器

> [!WARNING]
> 當於 *nix 系統執行時，你或許需要先建立 `${HOME}/hugo_cache` 目錄，否則可能遇到許可權問題。

{{< page-resource-content "codes/hugo-server" >}}

{{% bs/alert danger %}}
請注意當使用 `hugo server` 時 `--bind 0.0.0.0` 是必須的，否則 Hugo 服務器可能無法接收任何來自宿主機的請求。
{{% /bs/alert %}}

{{% bs/alert info %}}
自 `0.128.0`，`server` 可作為 `hugo server` 的別名使用，其默認綁定 `0.0.0.0`。
{{% /bs/alert %}}

1. `-p port:port` 將容器端口映射到宿主機端口。

使用 `1313` 以外的端口，如 `8080`：

{{< page-resource-content "codes/hugo-server-other-port" >}}

## 停止 Hugo 服務器

{{< page-resource-content "codes/stop-hugo-server" >}}

## 連接 Hugo 服務器

連接到一個運行中的 Hugo 服務器。

{{< page-resource-content "codes/attach-hugo-server" >}}
