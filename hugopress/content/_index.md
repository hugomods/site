---
title: HugoPress Module
description: The hook system to help developers build modular themes.
layout: landing
full_width: true
nav_icon:
  vendor: bs
  name: house
---

{{< bs/container breakpoint=fluid class="mb-5 px-4 py-3 py-lg-5 text-white" bgColor="#593B77" >}}

{{< bs/row class="py-3 py-lg-5" >}}

{{% bs/col size="12 lg:3" offset="lg:2" %}}
![Puzzle](/images/puzzle.jpg)
{{% /bs/col %}}

{{< bs/col size="12 lg:6" class="mb-4" >}}

{{< bs/display level=4 class="fw-bold mb-5" >}}
  {{< param title >}}
{{< /bs/display >}}

{{< bs/lead class="mb-5" >}}
  {{< param description >}}
{{< /bs/lead >}}

{{< html/div class="d-grid gap-3 d-sm-flex flex-wrap" >}}
  {{< bs/btn-link url="https://github.com/hugomods/hugopress" style=dark size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=github size=.8em >}} GitHub
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="docs" style=light size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=book size=.8em >}} Documentation
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{< /bs/row >}}

{{< /bs/container >}}
