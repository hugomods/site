---
title: Hugo 图片模块
description: "对 Markdown 友好的模块，其可通过 URL 查询字符串和片段 ID 处理图片，如对齐、调整大小、裁剪等。"
layout: landing
full_width: true
nav_icon:
  vendor: bs
  name: house
---

{{< bs/container breakpoint=fluid class="mb-5 px-4 py-3 py-lg-5 text-white" bg="images/camera.jpg" >}}

{{< bs/row class="py-3 py-lg-5" >}}

{{< bs/col size="12 lg:6" offset="lg:1" class="mb-4" >}}

{{< bs/display level=4 class="fw-bold mb-5" >}}
  {{< param title >}}
{{< /bs/display >}}

{{< bs/lead class="mb-5" >}}
  {{< param description >}}
{{< /bs/lead >}}

{{< html/div class="d-grid gap-3 d-sm-flex flex-wrap" >}}
  {{< bs/btn-link url="docs" size=lg style=light class="p-3" >}}
    {{< icons/icon vendor=bs name=book size=.8em >}} 阅读文档
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="#features" size=lg style=warning class="p-3" >}}
    {{< icons/icon vendor=bs name=stars size=.8em >}} 功能特性
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{< /bs/row >}}

{{< /bs/container >}}

## {{< icons/icon vendor=bs name=stars className="text-warning" size=.8em >}} 功能特性 {#features .text-center .py-3 .py-lg-5 }

{{< bs/container >}}
{{< bs/icon-grid data="features-zh-hans" alignment=center >}}
{{< /bs/container >}}
