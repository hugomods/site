---
title: Hugo 搜索模块
description: 基于 Fuse.js 的强大、灵活、响应迅速的客户端模糊搜索模块。
layout: landing
full_width: true
nav_icon:
  vendor: bs
  name: house
---

{{< bs/container breakpoint=fluid class="mb-5 px-4 py-3 py-lg-5 text-white bg-gradient" bgColor="#222225" >}}

{{< bs/row class="py-3 py-lg-5" >}}

{{< bs/col size="12 lg:6" offset="lg:2" class="mb-4" >}}

{{< bs/display level=4 class="fw-bold mb-5" >}}
  {{< param title >}}
{{< /bs/display >}}

{{< bs/lead class="mb-5" >}}
  {{< param description >}}
{{< /bs/lead >}}

{{< html/div class="d-grid gap-3 d-sm-flex flex-wrap" >}}
  {{< bs/btn-link url="https://github.com/hugomods/search" style=light size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=github size=.8em >}} GitHub
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="docs" size=lg style=success class="p-3" >}}
    {{< icons/icon vendor=bs name=book size=.8em >}} 阅读文档
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{% bs/col size="12 lg:3" %}}
![Search](https://hugomods.com/images/banners/search.png?width=1500&height=1000)
{{% /bs/col %}}

{{< /bs/row >}}

{{< /bs/container >}}
