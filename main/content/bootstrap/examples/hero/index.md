---
type: docs
title: "Bootstrap Hero Examples"
description: Quickly design and customize responsive, complex and beautiful Hero components with the Bootstrap shortcodes and the Hugo built-in shortcodes and the extended shortcodes.
linkTitle: "Hero"
date: 2023-06-21T12:14:19+08:00
featured: false
pinned: false
draft: false
nav_icon:
  vendor: bs
  name: text-paragraph
  className: text-success
weight: 1000
analyze: false
series:
categories:
tags:
authors:
  - HugoMods
images:
---

This article offers some hero examples that built with the Bootstrap shortcodes and the Hugo built-in shortcodes and the [extended shortcodes]({{< relref "docs/shortcodes" >}}).

<!--more-->

## Centered Hero

{{< bs/container size=fluid class="text-center mb-5 px-4 py-5" >}}

  {{% bs/col size=6 offset=3 class="text-center" %}}
  ![Logo](/images/logo.png?height=120px)
  {{% /bs/col %}}

  {{< bs/display level=4 class="fw-bold" >}}
    {{< param title >}}
  {{< /bs/display >}}

  {{< bs/lead class="mb-4" >}}
    {{< param description >}}
  {{< /bs/lead >}}

  {{< html/div class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
    {{< bs/btn-link url="#" size=lg style=primary class="p-3" >}}Primary button{{< /bs/btn-link >}}
    {{< bs/btn-link url="#" size=lg style=secondary class="p-3" >}}Secondary button{{< /bs/btn-link >}}
  {{< /html/div >}}

{{< /bs/container >}}

```markdown
{{</* bs/container size=fluid class="text-center mb-5 px-4 py-5" */>}}

  {{%/* bs/col size=6 offset=3 class="text-center" */%}}
  ![Logo](/images/logo.png?height=120px)
  {{%/* /bs/col */%}}

  {{</* bs/display level=4 class="fw-bold" */>}}
    {{</* param title */>}}
  {{</* /bs/display */>}}

  {{</* bs/lead class="mb-4" */>}}
    {{</* param description */>}}
  {{</* /bs/lead */>}}

  {{</* html/div class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" */>}}
    {{</* bs/btn-link url="#" size=lg style=primary class="p-3" */>}}Primary button{{</* /bs/btn-link */>}}
    {{</* bs/btn-link url="#" size=lg style=secondary class="p-3" */>}}Secondary button{{</* /bs/btn-link */>}}
  {{</* /html/div */>}}

{{</* /bs/container */>}}
```

## Centered Hero with Custom Background Color

For example, `text-bg-dark` represents the dark background.

{{< bs/container size=fluid class="text-center mb-5 px-4 py-5 text-bg-dark" >}}

  {{% bs/col size=6 offset=3 class="text-center" %}}
  ![Logo](/images/logo.png?height=120px)
  {{% /bs/col %}}

  {{< bs/display level=4 class="fw-bold" >}}
    {{< param title >}}
  {{< /bs/display >}}

  {{< bs/lead class="mb-4" >}}
    {{< param description >}}
  {{< /bs/lead >}}

  {{< html/div class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
    {{< bs/btn-link url="#" size=lg style=success class="p-3" >}}Primary button{{< /bs/btn-link >}}
    {{< bs/btn-link url="#" size=lg style=light class="p-3" >}}Secondary button{{< /bs/btn-link >}}
  {{< /html/div >}}

{{< /bs/container >}}

```markdown
{{</* bs/container size=fluid class="text-center mb-5 px-4 py-5 text-bg-dark" */>}}

  {{%/* bs/col size=6 offset=3 class="text-center" */%}}
  ![Logo](/images/logo.png?height=120px)
  {{%/* /bs/col */%}}

  {{</* bs/display level=4 class="fw-bold" */>}}
    {{</* param title */>}}
  {{</* /bs/display */>}}

  {{</* bs/lead class="mb-4" */>}}
    {{</* param description */>}}
  {{</* /bs/lead */>}}

  {{</* html/div class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" */>}}
    {{</* bs/btn-link url="#" size=lg style=success class="p-3" */>}}Primary button{{</* /bs/btn-link */>}}
    {{</* bs/btn-link url="#" size=lg style=light class="p-3" */>}}Secondary button{{</* /bs/btn-link */>}}
  {{</* /html/div */>}}

{{</* /bs/container */>}}
```

## Responsive Left-aligned Hero with Image

{{< bs/container fluid "mb-5 px-4 py-5" >}}

  {{< bs/row class="justify-content-center align-items-center" >}}

    {{< bs/col size="12 lg:6" class="mb-3" >}}
      {{< bs/display level=4 class="fw-bold text-center" >}}{{< param title >}}{{< /bs/display >}}
      {{< bs/lead class="mb-4" >}}{{< param description >}}{{< /bs/lead >}}
      {{< html/div class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
        {{< bs/btn-link url="#" size=lg class="p-3" >}}Primary button{{< /bs/btn-link >}}
        {{< bs/btn-link url="#" size=lg style=secondary class="p-3" >}}Secondary button{{< /bs/btn-link >}}
      {{< /html/div >}}
    {{< /bs/col >}}

  {{% bs/col size="lg:6" %}}
  ![Example](/images/example.jpg)
  {{% /bs/col %}}

  {{< /bs/row >}}

{{< /bs/container >}}

```markdown
{{</* bs/container fluid "mb-5 px-4 py-5" */>}}

  {{</* bs/row class="justify-content-center align-items-center" */>}}

    {{</* bs/col size="12 lg:6" class="mb-3" */>}}
      {{</* bs/display level=4 class="fw-bold text-center" */>}}{{</* param title */>}}{{</* /bs/display */>}}
      {{</* bs/lead class="mb-4" */>}}{{</* param description */>}}{{</* /bs/lead */>}}
      {{</* html/div class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" */>}}
        {{</* bs/btn-link url="#" size=lg class="p-3" */>}}Primary button{{</* /bs/btn-link */>}}
        {{</* bs/btn-link url="#" size=lg style=secondary class="p-3" */>}}Secondary button{{</* /bs/btn-link */>}}
      {{</* /html/div */>}}
    {{</* /bs/col */>}}

  {{%/* bs/col size="lg:6" */%}}
  ![Example](/images/example.jpg)
  {{%/* /bs/col */%}}

  {{</* /bs/row */>}}

{{</* /bs/container */>}}
```
