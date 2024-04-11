---
layout: landing
title: "Search"
description: Powerful, flexible and responsive client side fuzzy search module built on top of Fuse.js.
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
  - /en/docs/search
  - /docs/search
header:
  banner:
    img: images/banners/search.png
    alignment: center
    title: |
      Hugo Search Module
      {.mb-5 data-aos="fade-up"}
    description: |
      ___Powerful___, ___flexible___ and ___responsive___ client side ___fuzzy___ search module built on top of Fuse.js.
      {.mb-5 data-aos="fade-up" data-aos-delay="200"}

      {{< html/div
        data-aos="fade-up"
        data-aos-delay="300"
        class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
        {{< bs/btn-link size=lg class="py-3" style=light url="search/#features" >}}
          {{< icons/icon vendor=bs name=stars color=gold >}} Features
        {{< /bs/btn-link >}}
        {{< bs/dropdown name="Get Started" style=success size=lg class="py-3" toggle=false icon="book" >}}
          {{< bs/dropdown-item text="Modal Mode" url="/search/modal" icon="window-stack" >}}
          {{< bs/dropdown-item text="Single Page Mode" url="/search/single-page" icon="window-fullscreen" >}}
        {{< /bs/dropdown >}}
        {{< bs/btn-link size=lg class="py-3" style=info url="search/configurations" >}}
          {{< icons/icon vendor=bs name=gear >}} Configurations
        {{< /bs/btn-link >}}
      {{< /html/div >}}
---

## {{< icons/icon vendor=bs name=stars color=gold >}} Features {#features .display-4 .text-primary .text-center .mb-4 data-aos="fade-up"}

{{< bs/icon-grid
  data="features"
  border=false
  alignment=center
  item-attr-data-aos=fade-up
  linkText=""
>}}
