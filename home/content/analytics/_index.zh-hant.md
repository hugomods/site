---
title: "Hugo 分析模塊"
linkTitle: "分析"
description: 分析工具列表，比如 Google Analytics、Microsoft Clarity、Plausible、Umami 和百度統計等。
layout: landing
full_width: true
nav_weight: 1000
nav_icon:
  vendor: bs
  name: bar-chart
  color: ''
featured: false
pinned: false
date: 2023-06-20T09:10:52+08:00
draft: false
series:
  - 文檔
categories:
tags:
authors:
  - HugoMods
images:
menu:
  main:
    weight: 100
    parent: projects
    identifier: analytics
    params:
      icon:
        vendor: bs
        name: bar-chart
---

{{< bs/container breakpoint=fluid class="mb-5 px-4 py-3 py-lg-5 text-white bg-gradient" bgColor="#130f0b" >}}

  {{< bs/row class="justify-content-center align-items-center py-3 py-lg-5" >}}

  {{% bs/col size="12 lg:4" class="mb-5 mb-lg-0" %}}
  ![Analytics](/images/analytics.jpg)
  {{% /bs/col %}}

  {{< bs/col size="12 lg:6" class="mb-3 text-center" >}}
    {{< bs/display level=4 class="fw-bold mb-5" >}}{{< param title >}}{{< /bs/display >}}
    {{< bs/lead class="mb-5" >}}{{< param description >}}{{< /bs/lead >}}
    {{< html/div class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
      {{< bs/btn-link url="#modules" size=lg style=primary class="p-3" >}}
        {{< ico bs boxes >}}
        模塊
      {{< /bs/btn-link >}}
    {{< /html/div >}}
  {{< /bs/col >}}

  {{< /bs/row >}}

{{< /bs/container >}}

## {{< ico bs boxes >}} 模塊 {.py-5 .mb-5 .text-center #modules}

{{< bs/container >}}
  {{< article-grid >}}
{{< /bs/container >}}
