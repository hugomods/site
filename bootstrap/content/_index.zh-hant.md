---
title: Hugo Bootstrap 模塊
description: "通用、便利的 Hugo Bootstrap 短代碼，以幫助用戶構建網站。"
layout: landing
full_width: true
nav_icon:
  vendor: bs
  name: house
---

{{< bs/container breakpoint=fluid class="mb-5 px-4 py-3 py-lg-5 text-white" bg="images/seawater.jpg" >}}

{{< bs/row class="py-3 py-lg-5 text-center" >}}

{{< bs/col size="12" class="mb-4" >}}

{{< ico vendor=bs name=code-square size="5em" className="mb-4" >}}

{{< bs/display level=4 class="fw-bold mb-5" >}}
  {{< param title >}}
{{< /bs/display >}}

{{< bs/lead class="mb-5" >}}
  {{< param description >}}
{{< /bs/lead >}}

{{< html/div class="d-grid gap-3 d-sm-flex flex-wrap justify-content-center" >}}
  {{< bs/btn-link url="docs" size=lg style=light class="p-3" >}}
    {{< icons/icon vendor=bs name=book size=.8em >}} 閱讀文檔
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{< /bs/row >}}

{{< /bs/container >}}

{{< bs/container >}}
{{< bs/article-cards sections="docs" limit=24 >}}
{{< /bs/container >}}
