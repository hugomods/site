---
title: Hugo Icons Module
layout: landing
full_width: true
description: Lightweight and flexible Hugo SVG icons module that supports popular icons vendors, such as Bootstrap icons, Font Awesome icons, Material Design icons, Simple icons, Tabler icons, Feather icons, Lucide icons.
---

{{< bs/container breakpoint=fluid class="mb-5 py-2 py-lg-5 text-white" bg="images/textures/darkblue.jpg" >}}

{{< bs/row class="py-2 py-lg-5" >}}

{{< bs/col size="12 lg:8" offset="lg:2" class="mb-3" >}}

{{< bs/display level=4 class="fw-bold mb-4" >}}{{< param title >}}{{< /bs/display >}}

{{< bs/lead class="mb-4" >}}{{< param description >}}{{< /bs/lead >}}

{{% bs/col class="mb-4" %}}
- __Lightweight__ {{< icons/icon vendor=bootstrap name=check-circle className=text-success >}}
{data-bs-toggle="tooltip" data-bs-title="Load on demand, only used icons will be published." data-bs-placement="left" .mb-1}
- __JavaScript__ {{< icons/icon vendor=bootstrap name=x-circle className=text-danger >}}
{data-bs-toggle="tooltip" data-bs-title="No JavaScript required." data-bs-placement="left" .mb-1}
- __CSS__ {{< icons/icon vendor=bootstrap name=x-circle className=text-danger >}}
{data-bs-toggle="tooltip" data-bs-title="No CSS required." data-bs-placement="left" .mb-1}
- __Fonts__ {{< icons/icon vendor=bootstrap name=x-circle className=text-danger >}}
{data-bs-toggle="tooltip" data-bs-title="No fonts required." data-bs-placement="left" .mb-1}
- __Customizable__ {{< icons/icon vendor=bootstrap name=check-circle className=text-success >}}
{data-bs-toggle="tooltip" data-bs-title="You're able to create your own icons vendor." data-bs-placement="left" .mb-1}
- __Flexible__ {{< icons/icon vendor=bootstrap name=check-circle className=text-success >}}
{data-bs-toggle="tooltip" data-bs-title="Allow specifying the height, width, color and class name for icons." data-bs-placement="left" .mb-1}
{{% /bs/col %}}

{{< html/div class="d-grid gap-3 d-sm-flex flex-wrap" >}}
  {{< bs/btn-link url="docs" size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=book className="me-1" size=".8em" >}} Documentations
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="#vendors" size=lg style=light class="p-3" >}}
    {{< icons/icon vendor=fas name=icons className="me-1" size=".8em" >}} Vendors
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="#search" size=lg style=success class="p-3" >}}
    {{< icons/icon vendor=bs name=search className="me-1" size=".8em" >}} Search
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{< /bs/row >}}

{{< /bs/container >}}

## {{< icons/icon vendor=fas name=icons className="me-1" size=".8em" >}} Vendors {#vendors .py-4 .text-center .mb-5}

{{< vendor-cards >}}

## {{< icons/icon vendor=bs name=search className="me-1" size=".8em" >}} Search {#search .py-4 .text-bg-success .text-center .mb-5}

{{< search >}}
