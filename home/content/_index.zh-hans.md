---
title: HugoMods | Hugo 模块和工具
description: 用于构建快速、模块化和现代化的主题和静态网站的第三方 Hugo 模块和工具。
layout: landing
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
      可用于构建**快速**、**模块化**和**现代化**的主题和静态网站的第三方 Hugo 模块和工具。
      { .mb-5 data-aos="fade-up" data-aos-delay="200" }

      {{< html/div
        data-aos="fade-up"
        data-aos-delay="300"
        class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
        {{< bs/btn-link style=primary size=lg class="py-3" url="/docs" >}}
          {{< icons/icon vendor=bootstrap name=book className="me-1" >}} 阅读文档
        {{< /bs/btn-link >}}
        {{< bs/btn-link style=light size=lg class="py-3" url="/posts" >}}
          {{< icons/icon vendor=bootstrap name=newspaper className="me-1" >}} 博客
        {{< /bs/btn-link >}}
        {{< bs/btn-link style=danger size=lg class="py-3" url="/thanks" >}}
          {{< icons/icon vendor=bootstrap name=heart className="me-1" >}} 致谢
        {{< /bs/btn-link >}}
      {{< /html/div >}}
# menu:
#   main:
#     name: 主页
#     weight: 1
#     params:
#       icon:
#         vendor: bootstrap
#         name: house
---

## 赞助商 {#赞助商 .text-center .mb-5}

{{< sponsors >}}
