---
layout: landing
title: HugoMods | Hugo Modules and Tools
description: Third party Hugo modules and tools for building fast, modular, modern themes and static websites.
nav_icon:
  vendor: bs
  name: house
header:
  banner:
    alignment: center
    img: /images/banners/home.svg
    title: |
      HugoMods
      { .mb-5 data-aos="fade-up" }
    description: |
      Third party Hugo modules and tools for building **fast**, **modular**, **modern** themes and static websites.
      { .mb-5 data-aos="fade-up" data-aos-delay="200" }

      {{< html/div
        data-aos="fade-up"
        data-aos-delay="300"
        class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
        {{< bs/btn-link style=primary size=lg class="py-3" url="#projects-modules" >}}
          {{< icons/icon vendor=bootstrap name=book className="me-1" >}} Projects & Modules
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

## Projects & Modules {id="projects-modules" .display-4 .fw-bold .text-body-emphasis .mb-5 .text-center data-aos=fade-up}

{{< bs/icon-grid data="projects" alignment="center" item-attr-data-aos=fade-up >}}

## Latest Articles {.display-4 .fw-bold .text-body-emphasis .mb-5 .text-center data-aos=fade-up}

{{< bs/article-cards
  limit=12
  linkText=""
  item-attr-data-aos=fade-up
>}}

{{< html/p class="text-center mb-5" >}}
  {{< bs/btn-link url="posts" size=lg class="d-block py-3 text-decoration-none" style=link >}}
    Read more {{< icons/icon vendor=bs name=arrow-right className=ms-2 >}}
  {{< /bs/btn-link >}}
{{< /html/p >}}
