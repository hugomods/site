---
title: Hugo Kroki 模块
description: 利用 Kroki 的强大功能，从文本描述中创建图表，并以内联 SVG 和图片形式呈现，无需 JavaScript。
layout: landing
full_width: true
nav_icon:
  vendor: bs
  name: house
---

{{< bs/container breakpoint=fluid class="mb-5 px-4 py-3 py-lg-5 text-dark" bg="images/diagrams.jpg" >}}

{{< bs/row class="py-3 py-lg-5" >}}

{{< bs/col size="12 lg:6" offset="lg:1" class="mb-4" >}}

{{< bs/display level=4 class="fw-bold mb-5" >}}
  {{< param title >}}
{{< /bs/display >}}

{{< bs/lead class="mb-5" >}}
  {{< param description >}}
{{< /bs/lead >}}

{{< html/div class="d-grid gap-3 d-sm-flex flex-wrap" >}}
  {{< bs/btn-link url="https://github.com/hugomods/kroki" size=lg style=dark class="p-3" >}}
    {{< icons/icon vendor=bs name=github size=.8em >}} GitHub
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="docs" size=lg style=success class="p-3" >}}
    {{< icons/icon vendor=bs name=book size=.8em >}} 阅读文档
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{< /bs/row >}}

{{< /bs/container >}}
