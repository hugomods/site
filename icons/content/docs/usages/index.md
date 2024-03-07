---
date: 2024-03-05T19:20:15+08:00
title: Usages
description: Learn how to use icons by using templates and shortcodes.
nav_weight: 3
nav_icon:
  vendor: bs
  name: terminal
categories:
  - Docs
tags:
  - Shortcodes
  - Templates
  - partial
---

## Use Icons via Templates

{{< page-resource-content "codes/template-example" >}}

{{% params data=params.yaml headingStartLevel=3 %}}

## Use Icons via Shortcode

{{% hugo/shortcode-params data=params.yaml headingStartLevel=3 %}}

### Icons Shortcode Examples

#### Icon With Default Settings

{{< hugo/shortcode-example >}}
{{</* icons/icon bootstrap house */>}}
{{< /hugo/shortcode-example >}}

#### Icon With Custom Color

{{< hugo/shortcode-example >}}
{{</* icons/icon vendor=bootstrap name=exclamation-circle color=red */>}}
{{< /hugo/shortcode-example >}}

#### Icon With Custom Class Name

{{< hugo/shortcode-example >}}
{{</* icons/icon vendor=bootstrap name=check-circle className="text-success" */>}}
{{< /hugo/shortcode-example >}}

#### Icon With Custom Size

{{< hugo/shortcode-example >}}
{{</* icons/icon vendor=bootstrap name=plus-circle size=3em */>}}
{{< /hugo/shortcode-example >}}
