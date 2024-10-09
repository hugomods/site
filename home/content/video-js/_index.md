---
layout: landing
title: Hugo Video.js Module
description: Hugo module to add support for Video.js, a web video player built from the ground up for an HTML5 world. It supports HTML5 video and modern streaming formats, as well as YouTube and Vimeo.
full_width: true
linkTitle: Video.js
nav_icon:
  vendor: bs
  name: play-circle
menu:
  main:
    parent: projects
    params:
      description: Video.js module.
      icon:
        vendor: bs
        name: play-circle
        color: green
---

{{< bs/container breakpoint=fluid class="mb-5 px-4 py-3 py-lg-5 text-white" bgColor="#101B37" >}}

  {{< bs/row class="justify-content-center align-items-center py-3 py-lg-5" >}}

  {{< bs/col size="12 lg:4" class="mb-5 mb-lg-0" >}}
  {{< video-js
      src="https://commondata.razonyang.com/videos/raining-on-the-road-strewn-with-leaves.mp4"
      cover="https://commondata.razonyang.com/videos/raining-on-the-road-strewn-with-leaves.png" >}}
  {{< /bs/col >}}

  {{< bs/col size="12 lg:6" class="mb-3 text-center" >}}
    {{< bs/display level=4 class="fw-bold mb-5" >}}{{< param title >}}{{< /bs/display >}}
    {{< bs/lead class="mb-5" >}}{{< param description >}}{{< /bs/lead >}}
    {{< html/div class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
      {{< bs/btn-link url="/video-js/get-started" size=lg style=success class="p-3" >}}
        {{< ico bs arrow-right >}}
        Get Started
      {{< /bs/btn-link >}}
      {{< bs/btn-link url="#features" size=lg style=warning class="p-3" >}}
        {{< ico bs stars >}}
        Features
      {{< /bs/btn-link >}}
    {{< /html/div >}}
  {{< /bs/col >}}

  {{< /bs/row >}}

{{< /bs/container >}}

## {{< icons/icon vendor=bs name=stars >}} Features {#features .display-4 .text-bg-warning .text-center .py-5 .my-5 .border-bottom .border-warning .border-2 .pb-5 data-aos="fade-up"}

{{< bs/container >}}

{{< bs/icon-grid
  data="video-js.features.en"
  border=false
  alignment=center
  item-attr-data-aos=fade-up
  linkText=""
>}}

{{< /bs/container >}}

