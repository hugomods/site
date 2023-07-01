---
type: docs
title: "Bootstrap Button Link Shortcode"
linkTitle: "Button Link"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: link
  className: text-primary
featured: false
pinned: false
date: 2023-04-10T08:49:25+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Button
  - Link
authors:
  - HugoMods
images:
---

A brief description about the button link shortcode.

<!--more-->

## Usage

```markdown
{{</* bs/btn-link [url] */>}}
TEXT
{{</* /bs/btn-link */>}}
```

## Parameters

{{% shortcode-params "data/params.en.toml" %}}

## Examples

### Button Link Styles

{{< bs/btn-link "#button-link-styles" "primary" >}}
Primary
{{< /bs/btn-link >}}

{{< bs/btn-link "#button-link-styles" "secondary" >}}
Secondary
{{< /bs/btn-link >}}

{{< bs/btn-link "#button-link-styles" "success" >}}
Success
{{< /bs/btn-link >}}

{{< bs/btn-link "#button-link-styles" "danger" >}}
Danger
{{< /bs/btn-link >}}

{{< bs/btn-link "#button-link-styles" "warning" >}}
Warning
{{< /bs/btn-link >}}

{{< bs/btn-link "#button-link-styles" "info" >}}
Info
{{< /bs/btn-link >}}

{{< bs/btn-link "#button-link-styles" "light" >}}
Light
{{< /bs/btn-link >}}

{{< bs/btn-link "#button-link-styles" "dark" >}}
Dark
{{< /bs/btn-link >}}

{{< bs/btn-link  "#button-link-styles" "link" >}}
Link
{{< /bs/btn-link >}}

### Outline Button Link

{{< bs/btn-link url="#outline-button-link" outline=true class="mb-3" >}}
Primary outline button link
{{< /bs/btn-link >}}

```markdown
{{</* bs/btn-link url="#outline-button-link" outline=true */>}}
Primary outline button link
{{</* /bs/btn-link */>}}
```

### Button Link Sizes

{{< bs/col class="mb-3" >}}

{{< bs/btn-link url="#button-link-sizes" size=sm >}}
Smaller button link size
{{< /bs/btn-link >}}

{{< bs/btn-link url="#button-link-sizes" >}}
Normal button link size
{{< /bs/btn-link >}}

{{< bs/btn-link url="#button-link-sizes" size=lg >}}
Lager button link size
{{< /bs/btn-link >}}

{{< /bs/col >}}

```markdown
{{</* bs/btn-link url="#button-link-sizes" size=sm */>}}
Smaller button link size
{{</* /bs/btn-link */>}}

{{</* bs/btn-link url="#button-link-sizes" */>}}
Normal button link size
{{</* /bs/btn-link */>}}

{{</* bs/btn-link url="#button-link-sizes" size=lg */>}}
Lager button link size
{{</* /bs/btn-link */>}}
```

### Button Link with Extra Classes

{{< bs/btn-link url="#button-link-with-extra-classes" class="d-block py-3 mb-3 rounded-0" >}}
Button link with extra classes
{{< /bs/btn-link >}}

```markdown
{{</* bs/btn-link url="#button-link-with-extra-classes" class="d-block py-3 rounded-0" */>}}
Button link with extra classes
{{</* /bs/btn-link */>}}
```

### External and Internal Button Links

{{< bs/col class="mb-3" >}}

{{< bs/btn-link "https://hbstack.dev/" >}}
HB framework (external)
{{< /bs/btn-link >}}

{{< bs/btn-link "docs/docker" >}}
Docker image (internal)
{{< /bs/btn-link >}}

{{< /bs/col >}}

```markdown
{{</* bs/btn-link "https://hbstack.dev/" */>}}
External link
{{</* /bs/btn-link >}}

{{</* bs/btn-link "docs/docker" */>}}
Internal link
{{</* /bs/btn-link */>}}
```
