---
title: Hugo 圖片模塊
description: "對 Markdown 友好的模塊，其可通過 URL 查詢字符串和片段 ID 處理圖片，如對齊、調整大小、裁剪等。"
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
  {{< bs/btn-link url="https://github.com/hugomods/images" size=lg style=dark class="p-3" >}}
    {{< icons/icon vendor=bs name=github size=.8em >}} GitHub
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="docs" size=lg style=light class="p-3" >}}
    {{< icons/icon vendor=bs name=book size=.8em >}} 閱讀文檔
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
{{< bs/icon-grid data="features-zh-hant" alignment=center >}}
{{< /bs/container >}}
