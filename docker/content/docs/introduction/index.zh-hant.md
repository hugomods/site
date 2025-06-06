---
title: 介紹
linkTitle: 介紹
description: 介紹 Hugo Docker 鏡像的細節。
date: 2024-03-06T21:51:21+08:00
nav_weight: 1
nav_icon:
  vendor: bs
  name: book
  className: text-primary
categories:
  - 文檔
tags:
  - 工作目錄
  - 命令
---

## 基礎鏡像

所有鏡像都是基於 [Alpine](https://hub.docker.com/_/alpine) 和 [Debian](https://hub.docker.com/_/debian) 的，後者帶有 `debian` 前綴。

## 最小的鏡像標籤

最小化的標籤（僅包含 Hugo）以 `base`（擴展版）或 `std-base`（標準版）開頭。

> [!NOTE]
> 默認的標籤（`latest`、`<version>`）並不是最小的，這是歷史原因造成的，且基於對向後兼容的考慮，默認標籤的功能將保持原樣。

## 用戶

### 默認用戶

| 鏡像                 | 默認用戶 |
| -------------------- | :-----: |
| **不帶有** `non-root` | `root` |
| **帶有** `non-root`   | `hugo` |

### `hugo` 用戶

不管鏡像的默認用戶是否為 `root`，所有鏡像都包含一個名為 `hugo` 的用戶，其擁有 `/src` 的所有權。

| 名稱   |  UID   |  組名  |  GID   |
| :----: | :----: | :----: | :----: |
| `hugo` | `1000` | `hugo` | `1000` |

## 默認工作目錄

默認工作目錄為 `/src`。

## 命令

### 默認命令

自 `0.136.2` 後的鏡像的默認命令為 `hugo help`（先前為 `hugo env`），其打印幫助信息並退出。

### 命令別名

當 `entrypoint` 命令不是一個容器內的系統命令，那麼其會被用作 Hugo 的子命令。

| 例子      | 命令           |
| --------- | -------------- |
| `docker run ... server`  | `docker run ... hugo server`  |
| `docker run ... version` | `docker run ... hugo version` |

### 服務器綁定接口

默認地，`hugo server`/`server` 將綁定 `0.0.0.0`，除非指定了 `--bind` 標記。

## 默認 Shell

基於 Alpine 的鏡像的默認的 Shell 為 `ash`，基於 Debian 的鏡像則為 `dash`。

