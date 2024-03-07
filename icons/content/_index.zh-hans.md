---
title: Hugo 图标模块
layout: landing
description: 轻量级、灵活的 Hugo SVG 图标模块，支持 Bootstrap 图标、Font Awesome 图标、Material Design 图标、Simple 图标、Tabler 图标、Feather 图标、Lucide 图标等流行图标供应商。
full_width: true
---

{{< bs/container breakpoint=fluid class="mb-5 py-2 py-lg-5 text-white" bg="images/textures/darkblue.jpg" >}}

{{< bs/row class="py-2 py-lg-5" >}}

{{< bs/col size="12 lg:8" offset="lg:2" class="mb-3" >}}

{{< bs/display level=4 class="fw-bold mb-4" >}}{{< param title >}}{{< /bs/display >}}

{{< bs/lead class="mb-4" >}}{{< param description >}}{{< /bs/lead >}}

{{% bs/col class="mb-4" %}}

- **轻量级** {{< icons/icon vendor=bootstrap name=check-circle className=text-success >}}
{data-bs-toggle="tooltip" data-bs-title="按需加载，只发布使用过的图标。" data-bs-placement="left" .mb-1}
- **JavaScript** {{< icons/icon vendor=bootstrap name=x-circle className=text-danger >}}
{data-bs-toggle="tooltip" data-bs-title="无需 JavaScript。" data-bs-placement="left" .mb-1}
- **CSS** {{< icons/icon vendor=bootstrap name=x-circle className=text-danger >}}
{data-bs-toggle="tooltip" data-bs-title="无需 CSS。" data-bs-placement="left" .mb-1}
- **字体** {{< icons/icon vendor=bootstrap name=x-circle className=text-danger >}}
{data-bs-toggle="tooltip" data-bs-title="无需字体。" data-bs-placement="left" .mb-1}
- **可定制的** {{< icons/icon vendor=bootstrap name=check-circle className=text-success >}}
{data-bs-toggle="tooltip" data-bs-title="支持自定义图标集。" data-bs-placement="left" .mb-1}
- **灵活的** {{< icons/icon vendor=bootstrap name=check-circle className=text-success >}}
{data-bs-toggle="tooltip" data-bs-title="允许设置图标宽高、颜色及 CSS 类名。" data-bs-placement="left" .mb-1}

{{% /bs/col %}}

{{< html/div class="d-grid gap-3 d-sm-flex flex-wrap" >}}
  {{< bs/btn-link url="docs" size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=book className="me-1" size=".8em" >}} 文档
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="#vendors" size=lg style=light class="p-3" >}}
    {{< icons/icon vendor=fas name=icons className="me-1" size=".8em" >}} 供应商
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="#search" size=lg style=success class="p-3" >}}
    {{< icons/icon vendor=bs name=search className="me-1" size=".8em" >}} 搜索
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{< /bs/row >}}

{{< /bs/container >}}

## {{< icons/icon vendor=fas name=icons className="me-1" size=".8em" >}} 供应商 {#vendors .py-4 .text-center .mb-5}

{{< vendor-cards >}}

## {{< icons/icon vendor=bs name=search className="me-1" size=".8em" >}} 搜索 {#search .text-center .mb-5}

{{< search >}}
