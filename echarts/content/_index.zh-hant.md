---
title: Hugo ECharts 模塊
description: 使用 Apache ECharts 免費創建直觀、交互式和高度可定製的圖表。
layout: landing
full_width: true
nav_icon:
  vendor: bs
  name: house
---

{{< bs/container breakpoint=fluid class="mb-5 px-4 py-3 py-lg-5 text-white bg-gradient" bgColor="#341203" >}}

{{< bs/row class="py-3 py-lg-5" >}}

{{< bs/col size="12 lg:5" offset="lg:1" class="mb-4" >}}

{{< bs/display level=4 class="fw-bold mb-5" >}}
  {{< param title >}}
{{< /bs/display >}}

{{< bs/lead class="mb-5" >}}
  {{< param description >}}
{{< /bs/lead >}}

{{< html/div class="d-grid gap-3 d-sm-flex flex-wrap" >}}
  {{< bs/btn-link url="https://github.com/hugomods/echarts" style=light size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=github size=.8em >}} GitHub
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="docs" style=success size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=book size=.8em >}} 閱讀文檔
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="#features" style=warning size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=stars size=.8em >}} 功能特性
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{% bs/col size="12 lg:4" offset="lg:1" %}}
![Charts](/images/charts.jpg)
{{% /bs/col %}}

{{< /bs/row >}}

{{< /bs/container >}}

## {{< icons/icon vendor=bs name=stars className="text-warning" size=.8em >}} 功能特性 {#features .text-center .py-3 .mb-5}

{{< bs/container >}}
{{< bs/icon-grid features-zh-hant >}}
{{< /bs/container >}}
