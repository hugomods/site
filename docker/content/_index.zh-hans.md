---
title: Hugo Docker 镜像
description: |
  自动化和最新的社区 Hugo Docker 镜像，具有从极简到全面的各种标签，如标准版和扩展版、根和非根、Git、Go、Node.js、NPM、Yarn、Dart Sass、AsciiDoc、Pandoc、每日构建等。
layout: landing
full_width: true
nav_icon:
  vendor: bs
  name: house
json_ld:
  faq_page:
    data: faqs-zh-hans
    question_field: title
    answer_field: content
---

{{< bs/container breakpoint=fluid class="text-center mb-5 px-4 py-3 py-lg-5 text-white" bg="images/whale.jpg" >}}

{{< bs/row class="py-3 py-lg-5" >}}

{{< bs/col size="12 lg:6" offset="lg:3" class="text-center mb-3" >}}
  {{< icons/icon vendor=simple name=docker size=10em >}}

{{< bs/display level=4 class="fw-bold mb-4" >}}
  {{< param title >}}
{{< /bs/display >}}

{{< html/div class="mb-4" >}}
  {{< docker-images-stats >}}
{{< /html/div >}}

{{< bs/lead class="mb-5" >}}
  {{< param description >}}
{{< /bs/lead >}}

{{< html/div class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
  {{< bs/btn-link url="https://github.com/hugomods/docker" style=light size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=github size=.8em >}} GitHub
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="docs" size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=book size=.8em >}} 阅读文档
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="#features" size=lg style=success class="p-3" >}}
    {{< icons/icon vendor=bs name=stars size=.8em >}} 功能特性
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="#faqs" size=lg style=info class="p-3" >}}
    {{< icons/icon vendor=bs name=question-circle size=.8em >}} 常见问题
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="docs/changelog" size=lg style=warning class="p-3" >}}
    {{< icons/icon vendor=bs name=clock-history size=.8em >}} 变更日志
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{< /bs/row >}}

{{< /bs/container >}}

## {{< icons/icon vendor=bs name=stars className=text-warning size=.8em >}} 功能特性 {#features .text-center .py-2 .py-lg-4 .mb-5}

{{< bs/container >}}
{{< bs/icon-grid features-zh-hans >}}
{{< /bs/container >}}

## {{< icons/icon vendor=bs name=question-circle className=text-info size=.8em >}} 常见问题 {#faqs .text-center .py-2 .py-lg-4 .mb-5}

{{< bs/container >}}
{{< bs/accordion data=faqs-zh-hans alwaysOpen=true >}}
{{< /bs/container >}}
