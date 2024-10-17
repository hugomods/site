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

## 如何安裝 Docker？

這超出了本文檔的範圍，請參閱 [Install Docker Engine](https://docs.docker.com/engine/install/)。

## 基礎鏡像

所有鏡像都是基於 [Alpine](https://hub.docker.com/_/alpine) 的。

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

## 默認命令

默認命令為 `hugo env`，其打印 Hugo 版本並退出。

## 默認 Shell

因為鏡像是基於 Alpine 的，其默認 Shell 為 `ash`（`/bin/sh`）。
