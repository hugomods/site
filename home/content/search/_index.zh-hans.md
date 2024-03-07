---
layout: landing
title: "搜索"
description: 基于 Fuse.js 的强大的、灵活的和响应式的 Hugo 客户端模糊搜索模块。
date: 2023-09-17T21:08:48+08:00
featured: false
pinned: false
draft: false
series:
  - Modules
categories:
  - Search
tags:
authors:
  - HugoMods
images:
aliases:
  - /zh-hans/docs/search
header:
  banner:
    img: images/banners/search.png
    alignment: center
    title: |
      Hugo 搜搜模块
      {.mb-5 data-aos="fade-up"}
    description: |
      基于 Fuse.js 的强大的、灵活的和响应式的 Hugo 客户端模糊搜索模块。
      {.mb-5 data-aos="fade-up" data-aos-delay="200"}

      {{< html/div
        data-aos="fade-up"
        data-aos-delay="300"
        class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
        {{< bs/btn-link size=lg class="py-3" style=light url="search/#features" >}}
          {{< icons/icon vendor=bs name=stars color=gold >}} 功能特性
        {{< /bs/btn-link >}}
        {{< bs/dropdown name="快速开始" style=success size=lg class="py-3" toggle=false icon="book" >}}
          {{< bs/dropdown-item text="模态框模式" url="/search/modal" icon="window-stack" >}}
          {{< bs/dropdown-item text="单页模式" url="/search/single-page" icon="window-fullscreen" >}}
        {{< /bs/dropdown >}}
        {{< bs/btn-link size=lg class="py-3" style=info url="search/configurations" >}}
          {{< icons/icon vendor=bs name=gear >}} 配置
        {{< /bs/btn-link >}}
      {{< /html/div >}}
---

## {{< icons/icon vendor=bs name=stars color=gold >}} 功能特性 {#features .display-4 .text-primary .text-center .mb-4 data-aos="fade-up"}

{{< bs/icon-grid
  data="features"
  border=false
  alignment=center
  item-attr-data-aos=fade-up
  linkText=""
>}}
