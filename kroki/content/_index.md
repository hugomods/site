---
title: Hugo Kroki Module
description: Leverage the power of Kroki to create diagrams from textual descriptions and present them as inline SVGs and images without JavaScript.
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
    {{< icons/icon vendor=bs name=book size=.8em >}} Documentation
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="#features" size=lg style=warning class="p-3" >}}
    {{< icons/icon vendor=bs name=stars size=.8em >}} Features
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{< /bs/row >}}

{{< /bs/container >}}

## {{< icons/icon vendor=bs name=stars size=.8em className="text-warning" >}} Features {#features .text-center .py-5}

{{< bs/container >}}
{{< bs/icon-grid "features" >}}
{{< /bs/container >}}
