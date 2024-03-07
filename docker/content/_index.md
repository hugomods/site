---
title: Hugo Docker Images
description: Minimal, up-to-date Hugo docker images that with multiple variants, such as extended version, Git, Go, Node.js, NPM, Dart Sass and more.
layout: landing
full_width: true
nav_icon:
  vendor: bs
  name: house
json_ld:
  faq_page:
    data: faqs
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
  {{< bs/btn-link url="docs" size=lg class="p-3" >}}
    {{< icons/icon vendor=bs name=book size=.8em >}} Documentations
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="#features" size=lg style=success class="p-3" >}}
    {{< icons/icon vendor=bs name=stars size=.8em >}} Features
  {{< /bs/btn-link >}}
  {{< bs/btn-link url="#faqs" size=lg style=info class="p-3" >}}
    {{< icons/icon vendor=bs name=question-circle size=.8em >}} FAQs
  {{< /bs/btn-link >}}
{{< /html/div >}}

{{< /bs/col >}}

{{< /bs/row >}}

{{< /bs/container >}}

## {{< icons/icon vendor=bs name=stars className=text-warning size=.8em >}} Features {#features .text-center .py-2 .py-lg-4 .mb-5}

{{< bs/container >}}
{{< bs/icon-grid features >}}
{{< /bs/container >}}

## {{< icons/icon vendor=bs name=question-circle className=text-info size=.8em >}} FAQs {#faqs .text-center .py-2 .py-lg-4 .mb-5}

{{< bs/container >}}
{{< bs/accordion faqs >}}
{{< /bs/container >}}
