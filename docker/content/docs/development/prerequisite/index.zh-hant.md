---
title: "前置條件"
description: "開發 Hugo 站點和主題的要求。"
date: 2024-06-03T13:19:22+08:00
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: list-check
series:
  - 文檔
---

## Docker

請參閱 [Install Docker Engine](https://docs.docker.com/engine/install/)。

## Hugo 站點

您需要準備一個用於開發的 Hugo 站點。如果還沒有，則首先需要創建一個新的 Hugo 站點。

### 從頭開始創建 Hugo 站點

{{< page-resource-content "data/create-site" >}}

> [!NOTE]
> `${PWD}` 表示當前工作目錄。

### 啟動 Hugo 服務器

當站點準備好後，你可以通過 [Docker Run]({{< relref "docs/development/docker-run" >}}) 或 [Docker Compose]({{< relref "docs/development/docker-compose" >}}) 來啟動 Hugo 服務器。
