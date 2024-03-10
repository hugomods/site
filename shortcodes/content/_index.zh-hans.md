---
title: Hugo 扩展短代码
description: "各种扩展的短代码，以帮助用户轻松编写漂亮、可维护的 Markdown 内容。"
layout: landing
full_width: true
nav_icon:
  vendor: bs
  name: house
---

{{< bs/container breakpoint=fluid class="mb-5 px-4 py-3 py-lg-5 text-white" bgColor="#000202" >}}

{{< bs/row class="py-3 py-lg-5" >}}

{{< bs/col size="12 lg:5" offset="lg:1" class="mb-4" >}}

{{< bs/display level=4 class="fw-bold mb-5" >}}
  {{< param title >}}
{{< /bs/display >}}

{{< bs/lead class="mb-5" >}}
  {{< param description >}}
{{< /bs/lead >}}

{{< html/div class="d-grid gap-3 d-sm-flex flex-wrap" >}}
  {{< bs/btn-link url="https://github.com/hugomods/shortcodes" style=dark size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=github size=.8em >}} GitHub
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="docs" size=lg style=light class="p-3" >}}
    {{< icons/icon vendor=bs name=book size=.8em >}} Documentations
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{% bs/col size="12 lg:4" offset="lg:1" class="mb-4" %}}
![Coding](/images/hacker.jpg)
{{% /bs/col %}}

{{< /bs/row >}}

{{< /bs/container >}}

{{< bs/container >}}
{{< bs/article-cards sections="docs" >}}
{{< /bs/container >}}
