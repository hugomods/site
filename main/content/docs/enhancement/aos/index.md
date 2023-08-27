---
title: "Animate on Scroll"
linkTitle: "AOS"
description: Animate on scroll module.
nav_weight: 1000
nav_icon:
  vendor: bs
  name: play-circle
featured: false
pinned: false
date: 2023-08-27T16:48:28+08:00
series:
  - Docs
categories:
  - Module
tags:
  - AOS
  - Animation
  - Scroll
authors:
  - HugoMods
images:
---

{{% module "github.com/hugomods/aos" %}}

The `github.com/hugomods/aos` module add support for the [AOS](https://github.com/michalsnik/aos) library, which allow attaching simple animations on elements that can be triggered on scroll.

## Installation

{{% skip-if-hugopress %}}

### Import the Module

{{% bs/config-toggle hugo %}}
module:
  imports:
    - path: github.com/hugomods/aos
{{% /bs/config-toggle %}}

### Import the Styles

```go-html-template
{{ partialCached "aos/assets/css" . }}
```

### Import the JavaScript

```go-html-template
{{ partialCached "aos/assets/js" . }}
```

## Site Parameters

{{% bs/config-toggle hugo %}}
params:
  aos:
    css_url: https://unpkg.com/aos@next/dist/aos.css
    js_url: https://unpkg.com/aos@next/dist/aos.js
{{% /bs/config-toggle %}}

You don't have to specify those parameters unless necessary.

### `css_url`

The `css_url` represents the URL of AOS styles, you can replace it with any CDN, or even a self hosted.

### `js_url`

Similarly, this parameter is used to specify the URL of AOS JavaScript, feel free to replace it with whatever CDN you like.

## AOS Options

To tweak the [AOS options](https://github.com/michalsnik/aos#1-initialize-aos), you'll need to create the `assets/mods/aos/js/options.ts` file in following form.

```ts
export default {
  delay: '1s'
  // ...
}
```

## Usage

AOS set animation by using `data-aos` attribute:

```html
<div data-aos="fade-in"></div>
```

And adjust behavior by using `data-aos-*` attributes:

```html
<div
  data-aos="fade-up"
  data-aos-offset="200"
  data-aos-delay="50"
  data-aos-duration="1000"
  data-aos-easing="ease-in-out"
  data-aos-mirror="true"
  data-aos-once="false"
  data-aos-anchor-placement="top-center">
</div>
```

> https://github.com/michalsnik/aos#2-set-animation-using-data-aos-attribute.

You can also [use AOS with Markdown block attributes](#aos-example-using-markdown-block-attributes) in the content file, which is more convenient than creating shortcodes sometime.

## Examples

### AOS Example Using Markdown Block Attributes

Please make sure you've enabled the `markup.goldmark.parser.attribute.block`.

{{% bs/config-toggle hugo %}}
markup:
  goldmark:
    parser:
      attribute:
        block: true
        title: true
{{% /bs/config-toggle %}}

```markdown
The first fade up line.
{ data-aos="fade-up" }

The second fade up line with `200ms` delay.
{ data-aos="fade-up" data-aos-delay="200" }
```

The first fade up line.
{ data-aos="fade-up" }

The second fade up line with `200ms` delay.
{ data-aos="fade-up" data-aos-delay="200" }
