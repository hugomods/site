---
title: Hugo Base 模块
description: "用于开发和设计 Hugo 主题的实用的模板和函数。"
layout: landing
full_width: true
nav_icon:
  vendor: bs
  name: house
---

{{< bs/container breakpoint=fluid class="mb-5 px-4 py-3 py-lg-5 text-white" bg="images/jenga.jpg" >}}

{{< bs/row class="py-3 py-lg-5" >}}

{{< bs/col size="12 lg:6" offset="lg:1" class="mb-4" >}}

{{< bs/display level=4 class="fw-bold mb-5" >}}
  {{< param title >}}
{{< /bs/display >}}

{{< bs/lead class="mb-5" >}}
  {{< param description >}}
{{< /bs/lead >}}

{{< html/div class="d-grid gap-3 d-sm-flex flex-wrap" >}}
  {{< bs/btn-link url="docs" size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=book size=.8em >}} 阅读文档
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{< /bs/row >}}

{{< /bs/container >}}

{{< bs/container >}}

{{< bs/article-cards sections="docs" limit=12 >}}

{{< /bs/container >}}
