---
layout: landing
title: Hugo Modules
# menu:
#   main:
#     name: Home
#     weight: 1
#     params:
#       icon:
#         vendor: bootstrap
#         name: house
---

{{< bs/row class="text-center mb-5 py-5" >}}
  {{% html/div class="d-block mx-auto mb-1" %}}
  ![Logo](/images/logo.png?height=120px)
  {{% /html/div %}}
  {{< bs/display level=4 class="fw-bold text-body-emphasis" >}}{{< param title >}}{{< /bs/display >}}
  {{< bs/lead class="mb-4" >}}{{< param description >}}{{< /bs/lead >}}
  {{< html/div class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
    {{< bs/btn-link url="/docs" size=lg style=primary class="p-3" >}}
      {{< icons/icon vendor=bs name=book className=me-2 >}}Read the docs
    {{< /bs/btn-link >}}
    {{< bs/btn-link url="/posts" size=lg style=success class="p-3" >}}
      {{< icons/icon vendor=fas name=blog className=me-2 >}}Blog
    {{< /bs/btn-link >}}
    {{< bs/btn-link url="https://github.com/hugomods/" size=lg style=dark class="p-3" >}}
      {{< icons/icon vendor=simple name=github className=me-2 >}}Follow us
    {{< /bs/btn-link >}}
    {{< bs/btn-link url="/thanks" size=lg style=danger outline=true class="p-3" >}}
      {{< icons/icon vendor=fas name=heart className=me-2 >}}Thanks
    {{< /bs/btn-link >}}
  {{< /html/div >}}
{{< /bs/row >}}

{{< bs/display level=4 class="fw-bold text-body-emphasis mb-5 text-center" >}}Projects & Modules{{< /bs/display >}}

{{< bs/icon-grid "projects" >}}

{{< bs/display level=4 class="fw-bold text-body-emphasis mb-5 text-center" >}}Latest Articles{{< /bs/display >}}

{{< bs/article-cards limit=6 >}}

{{< html/p class="text-center mb-5" >}}
  {{< bs/btn-link url="posts" size=lg class="d-block py-3 text-decoration-none" style=link >}}
    Read more {{< icons/icon vendor=bs name=arrow-right className=ms-2 >}}
  {{< /bs/btn-link >}}
{{< /html/p >}}
