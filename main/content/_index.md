---
layout: landing
title: Hugo Modules
description: Hugo modules for building fast, modular and modern themes and static websites.
header:
  banner:
    alignment: center
    img: /images/banners/home.svg
    title: |
      Hugo Modules
      { .mb-5 data-aos="fade-up" }
    description: |
      Hugo modules for building **fast**, **modular** and **modern** themes and static websites.
      { .mb-5 data-aos="fade-up" data-aos-delay="200" }

      {{< html/div
        data-aos="fade-up"
        data-aos-delay="300"
        class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
        {{< bs/btn-link style=primary size=lg class="py-3" url="/docs" >}}
          {{< icons/icon vendor=bootstrap name=book className="me-1" >}} Read the docs
        {{< /bs/btn-link >}}
        {{< bs/btn-link style=light size=lg class="py-3" url="/posts" >}}
          {{< icons/icon vendor=bootstrap name=newspaper className="me-1" >}} Blog
        {{< /bs/btn-link >}}
        {{< bs/btn-link style=danger size=lg class="py-3" url="/thanks" >}}
          {{< icons/icon vendor=bootstrap name=heart className="me-1" >}} Thanks
        {{< /bs/btn-link >}}
      {{< /html/div >}}
# menu:
#   main:
#     name: Home
#     weight: 1
#     params:
#       icon:
#         vendor: bootstrap
#         name: house
---

## Sponsors {#sponsors .text-center .mb-5}

{{< sponsors >}}

{{< bs/display level=4 class="fw-bold text-body-emphasis mb-5 text-center" >}}Projects & Modules{{< /bs/display >}}

{{< bs/icon-grid "projects" >}}

{{< bs/display level=4 class="fw-bold text-body-emphasis mb-5 text-center" >}}Latest Articles{{< /bs/display >}}

{{< bs/article-cards limit=6 >}}

{{< html/p class="text-center mb-5" >}}
  {{< bs/btn-link url="posts" size=lg class="d-block py-3 text-decoration-none" style=link >}}
    Read more {{< icons/icon vendor=bs name=arrow-right className=ms-2 >}}
  {{< /bs/btn-link >}}
{{< /html/p >}}
