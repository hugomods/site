---
title: Hugo Base Module
description: Useful templates and functions for developing and designing Hugo themes.
layout: landing
full_width: true
nav_icon:
  vendor: bs
  name: house
---

<a href="https://www.freepik.com/free-vector/seo-concept-illustration_13549607.htm#fromView=search&page=1&position=31&uuid=23cecccd-0888-4270-a3c1-c8d3a5188a46">Image by storyset on Freepik</a>

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
    {{< icons/icon vendor=bs name=book size=.8em >}} Documentations
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{< /bs/row >}}

{{< /bs/container >}}
