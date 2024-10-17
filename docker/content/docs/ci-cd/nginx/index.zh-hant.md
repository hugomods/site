---
title: 使用 Nginx 鏡像部署
linkTitle: Nginx
description: 本節將介紹如何構建站點鏡像，以使用 Nginx 作為網絡服務器為 Hugo 生成的靜態文件提供服務。
date: 2024-03-07T12:33:11+08:00
nav_weight: 2
nav_icon:
  vendor: simple
  name: nginx
categories:
  - 文檔
tags:
  - 部署
  - Nginx
aliases:
  - /docs/deployment/nginx
---

## Nginx 鏡像

![Size](https://img.shields.io/docker/image-size/hugomods/hugo/nginx?style=flat-square)

我們提供了一個內置的 [Nginx](https://github.com/hugomods/docker/blob/main/docker/nginx/Dockerfile) 鏡像 - `hugomods/hugo:nginx`，其包含了一個[默認配置](https://github.com/hugomods/docker/blob/main/docker/nginx/conf.d/default.conf)。若其無法滿足你的需求，你完全可以創建你自己的 Nginx 鏡像，而本文將以 `hugomods/hugo:nginx` 舉例。

## 創建 Dockerfile

首先於站點根目錄創建 `Dockerfile` 文件。

{{< page-resource-content "codes/dockerfile" >}}

1. **build** 階段構建站點並將生成的文件保存於發佈文件夾（默認為 `/src/public`）。
1. **final** 階段將於 **build** 階段生成的文件複製到 Nginx 站點目錄（`hugomods/hugo:nginx` 默認站點目錄為 `/site`）。

## 測試構建的鏡像

{{< page-resource-content "codes/test" >}}

1. `-t` 指定鏡像名稱和標籤。
1. `--build-arg HUGO_BASEURL=http://localhost:8080` 覆蓋 `baseURL`。

現在構建的站點可以於 http://localhost:8080/ 進行預覽。

## 構建並推送鏡像

當你對測試結果感到滿意後，就可以構建生產環境的鏡像，然後將其推送到容器倉庫，再部署到服務器、K8s 集群等。

{{< page-resource-content "codes/build" >}}
