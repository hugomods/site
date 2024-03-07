---
type: docs
title: "Bootstrap Container Shortcode"
linkTitle: "Container"
nav_weight: 10
nav_icon:
  vendor: bs
  name: box
featured: false
pinned: false
date: 2023-06-29T08:49:25+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Container
authors:
  - HugoMods
images:
---

Containers are the most basic layout element in Bootstrap and are required when using our default grid system. Containers are used to contain, pad, and (sometimes) center the content within them. While containers can be nested, most layouts do not require a nested container.

<!--more-->

## Usage

```markdown
{{%/* bs/container */%}}
BODY
{{%/* /bs/container */%}}
```

## Parameters

{{% shortcode-params "data/params.toml" %}}

## Examples

{{% bs/container class="bg-primary text-center text-white px-2 py-3 mb-4" %}}Default container{{% /bs/container %}}

{{% bs/container "sm" "bg-primary text-center text-white px-2 py-3 mb-4" %}}100% wide until small breakpoint{{% /bs/container %}}

{{% bs/container "md" "bg-primary text-center text-white px-2 py-3 mb-4" %}}100% wide until medium breakpoint{{% /bs/container %}}

{{% bs/container "lg" "bg-primary text-center text-white px-2 py-3 mb-4" %}}100% wide until large breakpoint{{% /bs/container %}}

{{% bs/container "xl" "bg-primary text-center text-white px-2 py-3 mb-4" %}}100% wide until extra large breakpoint{{% /bs/container %}}

{{% bs/container "xxl" "bg-primary text-center text-white px-2 py-3 mb-4" %}}100% wide until extra extra large breakpoint{{% /bs/container %}}

{{% bs/container "fluid" "bg-primary text-center text-white px-2 py-3 mb-4" %}}100% wide at all breakpoints{{% /bs/container %}}

```markdown
{{%/* bs/container  */%}}
Default container
{{%/* /bs/container */%}}

{{%/* bs/container "sm" */%}}
100% wide until small breakpoint
{{%/* /bs/container */%}}

{{%/* bs/container "md" */%}}
100% wide until medium breakpoint
{{%/* /bs/container */%}}

{{%/* bs/container "lg" */%}}
100% wide until large breakpoint
{{%/* /bs/container */%}}

{{%/* bs/container "xl" */%}}
100% wide until extra large breakpoint
{{%/* /bs/container */%}}

{{%/* bs/container "xxl" */%}}
100% wide until extra extra large breakpoint
{{%/* /bs/container */%}}

{{%/* bs/container "fluid" */%}}
100% wide at all breakpoints
{{%/* /bs/container */%}}
```
