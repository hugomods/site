---
title: Hugo 圖標模塊
layout: landing
description: 輕量級、靈活的 Hugo SVG 圖標模塊，支持 Bootstrap 圖標、Font Awesome 圖標、Material Design 圖標、Simple 圖標、Tabler 圖標、Feather 圖標、Lucide 圖標等流行圖標供應商。
full_width: true
---

{{< bs/container breakpoint=fluid class="mb-5 py-2 py-lg-5 text-white" bg="images/textures/darkblue.jpg" >}}

{{< bs/row class="py-2 py-lg-5" >}}

{{< bs/col size="12 lg:8" offset="lg:2" class="mb-3" >}}

{{< bs/display level=4 class="fw-bold mb-4" >}}{{< param title >}}{{< /bs/display >}}

{{< bs/lead class="mb-4" >}}{{< param description >}}{{< /bs/lead >}}

{{% bs/col class="mb-4" %}}

- **輕量級** {{< icons/icon vendor=bootstrap name=check-circle className=text-success >}}
{data-bs-toggle="tooltip" data-bs-title="按需加載，只發布使用過的圖標。" data-bs-placement="left" .mb-1}
- **JavaScript** {{< icons/icon vendor=bootstrap name=x-circle className=text-danger >}}
{data-bs-toggle="tooltip" data-bs-title="無需 JavaScript。" data-bs-placement="left" .mb-1}
- **CSS** {{< icons/icon vendor=bootstrap name=x-circle className=text-danger >}}
{data-bs-toggle="tooltip" data-bs-title="無需 CSS。" data-bs-placement="left" .mb-1}
- **字體** {{< icons/icon vendor=bootstrap name=x-circle className=text-danger >}}
{data-bs-toggle="tooltip" data-bs-title="無需字體。" data-bs-placement="left" .mb-1}
- **可定製的** {{< icons/icon vendor=bootstrap name=check-circle className=text-success >}}
{data-bs-toggle="tooltip" data-bs-title="支持自定義圖標集。" data-bs-placement="left" .mb-1}
- **靈活的** {{< icons/icon vendor=bootstrap name=check-circle className=text-success >}}
{data-bs-toggle="tooltip" data-bs-title="允許設置圖標寬高、顏色及 CSS 類名。" data-bs-placement="left" .mb-1}

{{% /bs/col %}}

{{< html/div class="d-grid gap-3 d-sm-flex flex-wrap" >}}
  {{< bs/btn-link url="docs" size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=book className="me-1" size=".8em" >}} 文檔
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="#vendors" size=lg style=light class="p-3" >}}
    {{< icons/icon vendor=fas name=icons className="me-1" size=".8em" >}} 供應商
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="#search" size=lg style=success class="p-3" >}}
    {{< icons/icon vendor=bs name=search className="me-1" size=".8em" >}} 搜索
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{< /bs/row >}}

{{< /bs/container >}}

## {{< icons/icon vendor=fas name=icons className="me-1" size=".8em" >}} 供應商 {#vendors .py-4 .text-center .mb-5}

{{< vendor-cards >}}

## {{< icons/icon vendor=bs name=search className="me-1" size=".8em" >}} 搜索 {#search .text-center .mb-5}

{{< search >}}
